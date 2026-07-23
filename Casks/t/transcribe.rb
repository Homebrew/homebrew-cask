cask "transcribe" do
  arch arm: "arm", intel: "intel"
  url_arch = on_arch_conditional arm: "_arm"

  on_monterey :or_older do
    on_catalina :or_older do
      version "8.75.2"
      sha256 "f01781100cd3b9987c8f8892145a2eaa358df07b92e10e26f30b6a877f5b352c"

      url "https://www.seventhstring.com/xscribe/downmo/transcribe#{version.no_dots}.dmg"
    end
    on_big_sur :or_newer do
      version "9.21"
      sha256 :no_check

      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe#{url_arch}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "9.60.3"
    sha256 arm:   "7d0feff75a1d21657a5e47cbe7b7d795e58c4bf874828aa0c27f518525626745",
           intel: "12aa4b86fd6341a60d411ca1b01e910bad7b5004816c48db92f510ee9292d655"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe-#{arch}-#{version}.dmg"

    livecheck do
      url "https://www.seventhstring.com/xscribe/download_mac.html"
      regex(/transcribe[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    end
  end

  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  depends_on :macos

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"

  zap trash: [
    "~/Library/Preferences/com.seventhstring.transcribe.plist",
    "~/Library/Preferences/Transcribe!#{version.major} Preferences",
  ]
end
