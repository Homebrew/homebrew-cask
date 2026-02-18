cask "mozregression-gui" do
  version "7.2.0"
  sha256 "1249b87eaf5082ef5f3bddffa67054aabb8914f5a20a3edab0022b9113f8e6b5"

  url "https://github.com/mozilla/mozregression/releases/download/#{version}/mozregression-gui.dmg",
      verified: "github.com/mozilla/mozregression/"
  name "mozregression-gui"
  desc "Interactive regression range finder for Firefox and other Mozilla products"
  homepage "https://mozilla.github.io/mozregression/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "mozregression GUI.app"

  zap trash: "~/Library/Preferences/org.mozilla.mozregression-gui.plist"
end
