cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "26.9.4-0"
  sha256 arm:   "85512f5495465644e09655d84bc1df79d978353abd9ef0d0a8f3df75da44c760",
         intel: "4bf8d162f90a9ae79fbe1c3b152a9957b6cf4e7385758fa21e0340229d444df1"

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
