cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "py313_25.11.1-1"
    sha256 "9f84ad10ea513fb59bb714933bc8dc092bd25fdb03c236868f5d5af3c26a1fd4"

    livecheck do
      url "https://repo.anaconda.com/miniconda/"
      strategy :page_match do |page|
        checksum = page[/>\s*Miniconda\d+-latest-MacOSX?-#{arch}\.sh<.{,99}>(\w{64})</im, 1]
        next unless checksum

        page[/>\s*Miniconda3[._-](py\d+[._-]\d+(?:[.-]\d+)*)[._-]MacOSX?[._-]#{arch}\.sh<.{,99}>#{checksum}</im, 1]
      end
    end
  end
  on_intel do
    version "py313_25.7.0-2"
    sha256 "9c88674b1a839eeb4cff006df397a05ea7d896472318fd84b7070278f9653dc6"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://repo.anaconda.com/miniconda/Miniconda3-#{version}-MacOSX-#{arch}.sh"
  name "Miniconda"
  desc "Minimal installer for conda"
  homepage "https://www.anaconda.com/docs/getting-started/miniconda/main"

  auto_updates true
  conflicts_with cask: [
    "mambaforge",
    "miniforge",
  ]
  container type: :naked

  installer script: {
    executable: "Miniconda3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"

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
    "~/.continuum",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"

    Alternatively, manually add the following to your shell init:
      eval "$(conda "shell.$(basename "${SHELL}")" hook)"
  EOS
end
