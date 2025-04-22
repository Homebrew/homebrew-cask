cask "helio" do
  version "3.15"
  sha256 "7fc884eccf2e7e1eb795809586483e3445198c567ae47c031b7487f79865602e"

  url "https://ci.helio.fm/helio-#{version}.dmg"
  name "Helio"
  desc "Music composition software"
  homepage "https://helio.fm/"

  livecheck do
    url :homepage
    regex(/href=.*?helio[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true

  app "Helio.app"

  uninstall quit: "fm.helio"

  zap trash: [
        "~/Library/Caches/fm.helio",
        "~/Library/Caches/Helio",
        "~/Library/Helio",
        "~/Library/HTTPStorages/fm.helio",
        "~/Library/Saved Application State/fm.helio.savedState",
      ],
      rmdir: "~/Documents/Helio"
end
