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
    version "9.42.2"
    sha256 arm:   "32c5a3e6cc5258b89cc133dec796c4070c593675772b5891564f8fdd59f43c14",
           intel: "46daa138b93d92a048250287dc41f5ded9229442be164ab1f3115050c03ec454"

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
