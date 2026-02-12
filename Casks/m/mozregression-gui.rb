cask "mozregression-gui" do
  version "7.1.0"
  sha256 "1b02196cd4e406f663b87b6be8503f71cf4c4638ab08ebfb04bac926cc89f328"

  url "https://github.com/mozilla/mozregression/releases/download/#{version}/mozregression-gui-app-bundle.tar.gz",
      verified: "github.com/mozilla/mozregression/"
  name "mozregression-gui"
  desc "Interactive regression range finder for Firefox and other Mozilla products"
  homepage "https://mozilla.github.io/mozregression/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "mozregression-gui-app-bundle/mozregression GUI.app"

  zap trash: "~/Library/Preferences/org.mozilla.mozregression-gui.plist"
end
