cask "transcribe" do
  arch arm: "arm", intel: "intel"
  url_arch = on_arch_conditional arm: "_arm"

  on_monterey :or_older do
    version "9.21"
    sha256 :no_check

    url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe#{url_arch}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "9.70.1"
    sha256 arm:   "c322356d9f3b2cea870307b9e457adafd03a23a49c5a6a8b8b9ee8212b47cd04",
           intel: "997feea0d8b5cd537ce74188c5d2ffd2d8c71e8eb1fd990a22619d381eba72a9"

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
