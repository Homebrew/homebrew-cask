cask "picview" do
  arch arm: "arm64", intel: "x64"

  version "4.1.0"
  sha256 arm:   "a52fd088b74d0c0c56be6b39d1bd91c1269680dbf27be4d53b8cb85ea4200109",
         intel: "1da1c9e2821ac54dbb5e77315b60f2ee34645e4864e4bbd283e34f0f32da3a66"

  url "https://github.com/Ruben2776/PicView/releases/download/#{version}/PicView-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/Ruben2776/PicView/"
  name "PicView"
  desc "Picture viewer"
  homepage "https://picview.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PicView.app"

  zap trash: [
    "~/Library/Application Support/Ruben2776/PicView",
    "~/Library/Preferences/com.ruben2776.picview.plist",
  ]
end
