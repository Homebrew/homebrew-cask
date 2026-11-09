cask "audio-modeling-software-center" do
  version "3.1.0-1141"
  sha256 "bd8d4b1848ebc085af07f75ee79ba9d5c1265b2868cc7a79bbf9d9adaefe0817"

  url "https://static.audiomodeling.com/software_center/AudioModelingSoftwareCenter-#{version}-osx-installer.dmg"
  name "Audio Modeling Software Center"
  desc "Application for downloading, installing and updating Audio Modeling software"
  homepage "https://audiomodeling.com/"

  livecheck do
    url "https://audiomodeling.com/support/install-and-update/"
    regex(/AudioModelingSoftwareCenter[._-](\d+(?:\.\d+)+-\d+)-osx-installer\.dmg/i)
  end

  depends_on :macos

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
