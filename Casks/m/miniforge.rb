cask "miniforge" do
  arch arm:   "arm64", intel: "x86_64"

  version "25.3.1-0"
  sha256 arm:   "d9eabd1868030589a1d74017b8723b01cf81b5fec1b9da8021b6fa44be7bbeae",
         intel: "6c09a3550bb65bdb6d3db6f6c2b890b987b57189f3b71c67a5af49943d2522e8"

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
  conflicts_with cask: [
    "mambaforge",
    "miniconda",
  ]

  container type: :naked

  install_root = ENV["MINIFORGE_ROOT"] || "#{HOMEBREW_PREFIX}/miniforge3"

  installer script: {
    executable: "Miniforge3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", install_root],
  }

  binary "#{install_root}/condabin/conda"
  binary "#{install_root}/condabin/mamba"

  preflight do
    if File.directory?("#{HOMEBREW_PREFIX}/envs-backup")
      FileUtils.mv(
        "#{HOMEBREW_PREFIX}/envs-backup",
        "#{install_root}/envs",
      )
    end
  end

  uninstall_preflight do
    if File.directory?("#{install_root}/envs")
      FileUtils.mv(
        "#{install_root}/envs",
        "#{HOMEBREW_PREFIX}/envs-backup",
      )
    end
  end

  uninstall delete: install_root
  uninstall rmdir:  install_root

  zap trash: [
    "~/.conda",
    "~/.condarc",
    "#{HOMEBREW_PREFIX}/envs-backup",
  ]

  caveats do
    files_in_usr_local
    <<~EOS
      To install into your home directory instead (preserving envs across
      upgrades and reinstalls), set:

        export MINIFORGE_ROOT="${HOME}/miniforge3"

      Then run:

        brew install --cask miniforge
    EOS
  end
end
