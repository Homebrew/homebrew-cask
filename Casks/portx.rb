cask "portx" do
  version :latest
  sha256 :no_check

  url "https://cdn.netsarang.net/0ac7ea20/PortX-latest.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
