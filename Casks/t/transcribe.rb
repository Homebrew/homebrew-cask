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
    version "9.42.0"
    sha256 arm:   "6d6a50f227684728ba5ef69fa8bdba1e36cdd4da13d225eef6f6328c91837c3f",
           intel: "09be43ef5e8eb6ae3a220600db093bf6e8e2265087cbfaa2367d883ca67af1c2"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe-#{arch}-#{version}.dmg"

    livecheck do
      url "https://www.seventhstring.com/xscribe/download_mac.html"
      regex(/transcribe[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    end
  end

  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"

  zap trash: [
    "~/Library/Preferences/com.seventhstring.transcribe.plist",
    "~/Library/Preferences/Transcribe!#{version.major} Preferences",
  ]
end
