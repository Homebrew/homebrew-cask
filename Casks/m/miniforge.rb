cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "26.9.4-2"
  sha256 arm:   "fb567612b76f4ef46de326f04425dbe381b6afc6a66c545f5043255a5ef34258",
         intel: "30e82ce68875fc50b917a3a541ea0516272866584187f7ea980ce8eaf715807d"

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
    if_path_exists "{{temp}}/{{token}}-envs" do
      remove "base/envs", base: :caskroom_path, recursive: true
      move "{{temp}}/{{token}}-envs", "base/envs", target_base: :caskroom_path
    end
  end

  uninstall_preflight_steps do
    if_path_exists "{{caskroom_path}}/base/envs" do
      move "base/envs", "{{temp}}/{{token}}-envs", source_base: :caskroom_path
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
