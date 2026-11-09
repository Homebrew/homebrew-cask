cask "mozregression-gui" do
  version "7.6.0"
  sha256 "6ea59371a2f9b75b5b7b9e3d2a945ecdcdd47542046beb63c3eca710081b07c7"

  url "https://github.com/mozilla/mozregression/releases/download/#{version}/mozregression-gui.dmg"
  name "mozregression-gui"
  desc "Interactive regression range finder for Firefox and other Mozilla products"
  homepage "https://mozilla.github.io/mozregression/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "mozregression GUI.app"

  uninstall launchctl: "application.mozregression",
            signal:    ["TERM", "mozregression GUI"]

  zap trash: "~/Library/Preferences/org.mozilla.mozregression-gui.plist"
end
