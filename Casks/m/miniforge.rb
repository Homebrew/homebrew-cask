cask "miniforge" do
  arch arm: "arm64", intel: "x86_64"

  version "25.11.0-0"
  sha256 arm:   "e661edc406c2e4894e965e4279fdc295650dceb6e1f3a851e38c8768e6312522",
         intel: "9c6a6b0ce89348adcb70ef221a6b289442c20173fff27a2c54a8397de02ce496"

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

  installer script: {
    executable: "Miniforge3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"
  binary "#{caskroom_path}/base/condabin/mamba"

  postflight do
    if Dir.exist? "#{HOMEBREW_TEMP}/#{token}-envs"
      FileUtils.rm_r "#{caskroom_path}/base/envs"
      FileUtils.mv "#{HOMEBREW_TEMP}/#{token}-envs", "#{caskroom_path}/base/envs"
    end
  end

  uninstall_preflight do
    if Dir.exist? "#{caskroom_path}/base/envs"
      FileUtils.mv "#{caskroom_path}/base/envs", "#{HOMEBREW_TEMP}/#{token}-envs"
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
