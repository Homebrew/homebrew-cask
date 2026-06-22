cask "mozregression-gui" do
  version "7.3.0"
  sha256 "9270673f7e78540f482ff04ba66bfb392bd6095d5a693f32023129188625e157"

  url "https://github.com/mozilla/mozregression/releases/download/#{version}/mozregression-gui.dmg",
      verified: "github.com/mozilla/mozregression/"
  name "mozregression-gui"
  desc "Interactive regression range finder for Firefox and other Mozilla products"
  homepage "https://mozilla.github.io/mozregression/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "mozregression GUI.app"

  zap trash: "~/Library/Preferences/org.mozilla.mozregression-gui.plist"
end
