cask "helio" do
  version "3.16"
  sha256 "87b8ae4c6394da1a3555de828361e5be33d4d2c491716a3eeb8c0aeb23c693b1"

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
