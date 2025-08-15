cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "25.3.1-0"
  sha256 arm:   "d9eabd1868030589a1d74017b8723b01cf81b5fec1b9da8021b6fa44be7bbeae",
         intel: "6c09a3550bb65bdb6d3db6f6c2b890b987b57189f3b71c67a5af49943d2522e8"

  url "https://github.com/conda-forge/miniforge/releases/download/#{version}/Miniforge3-#{version}-MacOSX-#{arch}.sh"
  name "miniforge"
  desc "Community-driven minimal conda installer"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :homepage
    regex(/v?(\d+(?:[.-]\d+)+)/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: [
    "mambaforge",
    "miniconda",
  ]
  container type: :naked

  install_root = ENV["MINIFORGE_ROOT"] || "#{caskroom_path}/base"

  installer script: {
    executable: "Miniforge3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", install_root],
  }

  binary "#{install_root}/condabin/conda"
  binary "#{install_root}/condabin/mamba"

  uninstall_preflight do
    if File.directory?("#{install_root}/envs")
      FileUtils.mv("#{install_root}/envs", "#{caskroom_path}/envs-backup")
    end
  end

  preflight do
    if File.directory?("#{caskroom_path}/envs-backup")
      FileUtils.mv("#{caskroom_path}/envs-backup", "#{install_root}/envs")
    end
  end

  uninstall rmdir: "#{caskroom_path}"

  zap trash: [
    "~/.conda",
    "~/.condarc",
    "#{caskroom_path}/envs-backup",
  ]

  caveats <<~EOS
    To install into your home dir (and preserve envs across uninstall/reinstall), run:
      export MINIFORGE_ROOT="${HOME}/miniforge3"
    Then:
      brew install --cask miniforge
    Your conda envs will now be auto-saved on upgrade and safely restored.
  EOS
end
