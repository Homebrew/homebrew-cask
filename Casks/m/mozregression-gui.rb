cask "mozregression-gui" do
  version "7.7.0"
  sha256 "1e8d1a9414725087d58f7b3879d851f7262e6c6f19d999926510fd514da98884"

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
