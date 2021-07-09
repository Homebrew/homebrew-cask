cask "fuwari" do
  version "0.6.0"
  sha256 "b9094bfb586408dec8f2860fd462f6079d94c5b3bb735b6842d88ff90217577e"

  url "https://github.com/kentya6/Fuwari/releases/download/v#{version}/Fuwari.v#{version}.zip",
      verified: "github.com/kentya6/Fuwari/"
  name "Fuwari"
  desc "Floating screenshot like a sticky"
  homepage "https://fuwari-app.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Fuwari v#{version}/Fuwari.app"

  uninstall quit: "com.appknop.Fuwari"

  zap trash: [
    "~/Library/Application Support/com.appknop.Fuwari",
    "~/Library/Caches/com.appknop.Fuwari",
    "~/Library/Caches/com.crashlytics.data/com.appknop.Fuwari",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.appknop.Fuwari",
    "~/Library/Preferences/com.appknop.Fuwari.plist",
  ]
end
