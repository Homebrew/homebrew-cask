cask "container-compose" do
  version "0.5.0"
  sha256 "7e87c5681cda02a957e049ca105ceea13789b8e1222e779231ebf8780c4d9106"

  url "https://github.com/Mcrich23/container-compose/releases/download/#{version}/container-compose.pkg"
  name "Container Compose"
  desc "Manage Apple Container with Docker Compose files"
  homepage "https://github.com/mcrich23/container-compose"

  pkg "container-compose.pkg"

  uninstall pkgutil: "com.mcrich.pkg.container-compose"

  livecheck do
    url :url
    strategy :github_latest
  end
end
