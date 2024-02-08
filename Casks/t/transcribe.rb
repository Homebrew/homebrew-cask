cask "transcribe" do
  arch arm: "arm", intel: "intel"

  on_catalina :or_older do
    version "8.75.2"
    sha256 "f01781100cd3b9987c8f8892145a2eaa358df07b92e10e26f30b6a877f5b352c"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe#{version.no_dots}.dmg"

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_big_sur do
    version "9.21"
    sha256 :no_check

    on_arm do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe_arm.dmg"
    end
    on_intel do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe.dmg"
    end

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_monterey do
    version "9.21"
    sha256 :no_check

    on_arm do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe_arm.dmg"
    end
    on_intel do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe.dmg"
    end

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_ventura :or_newer do
    version "9.40.0"
    sha256 arm:   "030510d74aea878a17f669bcee7726704b3376315baba4d7eb48e191ca1174b6",
           intel: "b1cc25eba8129fa87d1fa15f0f9640cb60438f5ad49e73abe921677668310878"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe-#{arch}-#{version}.dmg"

    livecheck do
      url "https://www.seventhstring.com/xscribe/download_mac.html"
      regex(/transcribe[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end

  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"
end
