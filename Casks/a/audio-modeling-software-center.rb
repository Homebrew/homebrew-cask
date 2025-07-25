cask "audio-modeling-software-center" do
  version "2.0.4-461"
  sha256 "e7be33038773d645657c6d9e83e5cef5ea5ddac0446fc94e8b40492c0ef64562"

  url "https://static.audiomodeling.com/software_center/AudioModelingSoftwareCenter-#{version}-osx-installer.dmg"
  name "Audio Modeling Software Center"
  desc "Application for downloading, installing and updating Audio Modeling software"
  homepage "https://audiomodeling.com/"

  livecheck do
    url "https://audiomodeling.com/support/install-and-update/"
    regex(/AudioModelingSoftwareCenter[._-](\d+(?:\.\d+)+-\d+)-osx-installer\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  installer script: {
    executable: "AudioModelingSoftwareCenter-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args: [
      "--mode",
      "unattended"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/Audio Modeling/Software Center/uninstall.app/Contents/MacOS/installbuilder.sh",
    sudo:       true,
  }

  zap trash: [
    "~/Library/Audio Modeling/Software Center",
    "~/Shared/Audio Modeling/Software Center",
  ]
end
