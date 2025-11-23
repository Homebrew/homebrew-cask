cask "fuwari" do
  version "1.0.0"
  sha256 "a294c82b3ec288b2adf828c42bdfa42144efed9aae5c66e03d0708ff9ba71acb"

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
