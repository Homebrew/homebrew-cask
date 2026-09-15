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
    version "9.60.7"
    sha256 arm:   "e3c8ded09f3152bce8e2d552922079ae2f11dc4649a7a402747559903b4c0e40",
           intel: "02115eb649f9ba4cef0ae670606d3edf6cfd99dce813c442a7ebe1714db3c363"

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
