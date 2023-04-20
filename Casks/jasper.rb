cask "jasper" do
  arch arm: "arm64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "093af7d5b6d86e3b808ca03e0c03984acc1acb23e4f5c1bf33ba1a1c9dbf91da",
         intel: "dbbe65c2323d11bb94ec5bf0168b39e1c4cc61f040bd62c50200b07c77942437"

  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac_#{arch}.zip",
      verified: "github.com/jasperapp/jasper/"
  name "Jasper"
  desc "Issue reader for GitHub"
  homepage "https://jasperapp.io/"

  app "Jasper.app"

  zap trash: [
    "~/Library/Application Support/jasper",
    "~/Library/Containers/io.jasperapp",
  ]
end
