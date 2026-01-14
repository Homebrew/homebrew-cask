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
    version "9.50.1"
    sha256 arm:   "b9d0c2a1b9355b8fb4d7cd31f2e77e5c30d9e306fbfb2398a21fc117c70cdab2",
           intel: "1e2838787f961c70a0d235e9bfd0885ffcf6706a2f9edd1ecc33ea92357eae08"

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
