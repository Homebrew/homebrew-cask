cask "helio" do
  version "3.14"
  sha256 "7d850e8d84b0723d3e253abb8e01b02ad3909f10209793c5169a60dd47a0ece4"

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
