cask "portx" do
  version "1.1.2"
  sha256 "beceac47566f84ad2095e2cc314c90ca56087b000040fe6ff019613cfb806864"

  url "https://github.com/NetSarangComputer/PortX/releases/download/v#{version}/PortX-#{version}.dmg"
  name "portx"
  desc "SSH Client"
  homepage "https://github.com/NetSarangComputer/PortX/releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
