cask "mozregression-gui" do
  version "7.5.0"
  sha256 "ff7afe74e968d6faa14dc4d1184157377b116da24043f4bcbc1ce276333ae183"

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

  zap trash: "~/Library/Preferences/org.mozilla.mozregression-gui.plist"
end
