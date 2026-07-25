cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "26.3.2-3"
  sha256 arm:   "59168f1e24d0a4ad9932021170809fca836cd240e183eeeb331d5bcfc0098168",
         intel: "39273e4c89a0a1af4538010615d44ae8f44e1af41007e02def593d20f316b003"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-#{arch}.sh"
  name "miniforge"
  desc "Minimal installer for conda specific to conda-forge"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :homepage
    regex(/v?(\d+(?:[.-]\d+)+)/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "miniconda"
  depends_on :macos
  container type: :naked

  installer script: {
    executable: "Miniforge3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"
  binary "#{caskroom_path}/base/condabin/mamba"

  postflight_steps do
    if_path_exists "{{temp}}/#{token}-envs" do
      remove "base/envs", base: :caskroom_path, recursive: true
      move "{{temp}}/#{token}-envs", "base/envs", target_base: :caskroom_path
    end
  end

  uninstall_preflight_steps do
    if_path_exists "{{caskroom_path}}/base/envs" do
      move "base/envs", "{{temp}}/#{token}-envs", source_base: :caskroom_path
    end
  end

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
    "#{HOMEBREW_TEMP}/#{token}-envs",
    "~/.conda",
    "~/.condarc",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"
  EOS
end
