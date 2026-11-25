cask "audio-modeling-software-center" do
  version "3.1.2-1154"
  sha256 "5015e96b718d8025ef583476fe6b74f5d9984952bfea5f89c0705d7abdb7d8a5"

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
