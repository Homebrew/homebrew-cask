cask "orlo" do
  version "1.2.17"
  sha256 "a7c86a84aee249536a828ea24bd2a7fbc2381538c53f938cc391d5f6ecf1ea25"

  url "https://orlo.akxl.io/app/orlo-#{version}.dmg"
  name "Orlo"
  desc "Multi-connection download manager with BitTorrent and browser capture"
  homepage "https://orlo.akxl.io/"

  livecheck do
    url "https://orlo.akxl.io/app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Orlo.app"

  uninstall quit:       "io.akxl.orlo",
            login_item: "Orlo"

  zap trash: [
    "~/Library/Application Scripts/22RTADPHUC.orlo",
    "~/Library/Application Scripts/io.akxl.orlo.SafariExtension",
    "~/Library/Application Support/*/User Data/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/io.akxl.orlo.host.json",
    "~/Library/Application Support/Orlo",
    "~/Library/Caches/io.akxl.orlo",
    "~/Library/Containers/io.akxl.orlo.SafariExtension",
    "~/Library/Group Containers/22RTADPHUC.orlo",
    "~/Library/HTTPStorages/io.akxl.orlo",
    "~/Library/Preferences/io.akxl.orlo.plist",
    "~/Library/WebKit/io.akxl.orlo",
  ]
end
