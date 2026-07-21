cask "miniconda" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "py314_26.5.3-1"
    sha256 "0cb1e1d43810d3118f7b6cd0095aff48dbde8312a19cb8c44e9a79c38bb48be3"

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
  conflicts_with cask: "miniforge"
  depends_on :macos
  container type: :naked

  installer script: {
    executable: "Miniconda3-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"

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
    "~/.continuum",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"

    Alternatively, manually add the following to your shell init:
      eval "$(conda "shell.$(basename "${SHELL}")" hook)"
  EOS
end
