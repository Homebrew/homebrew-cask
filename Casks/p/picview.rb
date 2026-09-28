cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "5.1.4"
  sha256 arm:   "8bbb50175169c1580f1880715b73803fc97c9ad6ee862caa5d2589468e0a9e47",
         intel: "f876deba66c2771d92640df3c50df84e92aac61c07e761ee26d707acd2492571"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg"
  name "PicView"
  desc "Picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end
