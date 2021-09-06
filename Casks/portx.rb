cask "portx" do
  version "1.1.6,8"
  sha256 "b766d76352bfde76d2f2a6252a6cf21b45cc3475cd1848abe20656e2bb0f44cc"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.before_comma}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
