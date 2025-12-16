cask "audio-modeling-software-center" do
  version "2.1.0-555"
  sha256 "e22b7e24985db4ab193e8ce627642f8501931763e242d444a51a0868ae6fedff"

  url "https://static.audiomodeling.com/software_center/AudioModelingSoftwareCenter-#{version}-osx-installer.dmg"
  name "Audio Modeling Software Center"
  desc "Application for downloading, installing and updating Audio Modeling software"
  homepage "https://audiomodeling.com/"

  livecheck do
    url "https://audiomodeling.com/support/install-and-update/"
    regex(/AudioModelingSoftwareCenter[._-](\d+(?:\.\d+)+-\d+)-osx-installer\.dmg/i)
  end

  installer script: {
    executable: "AudioModelingSoftwareCenter-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Audio Modeling/Software Center/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  zap trash: [
    "/Users/Shared/Audio Modeling/Software Center",
    "~/Library/Audio Modeling/Software Center",
  ]
end
