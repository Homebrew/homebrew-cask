cask "picgo" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0-beta.0"
  sha256 arm:   "0f13da1021a66078490858a89946d7ea499967dd14ac7d281d75a81c1b4740b7",
         intel: "fff73e1eb9d2bec6b8ff7435cfa8aa024126301bb6a566b58680c819bbef4ed8"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-#{arch}.dmg"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PicGo.app"
end
