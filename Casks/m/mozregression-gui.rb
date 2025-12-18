cask "mozregression-gui" do
  version "7.0.0"
  sha256 "cca56b22a22079c82d170289e2b6b19f942b0a24f027beefcda8463e8df36203"

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
