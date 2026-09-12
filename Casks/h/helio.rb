cask "helio" do
  version "3.18"
  sha256 "b84ffd9b5015e8eca193e76799c49eb86ee8f4bb8c0ea3ff63f50b9a6e96bb61"

  url "https://ci.helio.fm/helio-#{version}.dmg"
  name "Helio"
  desc "Music composition software"
  homepage "https://helio.fm/"

  livecheck do
    url :homepage
    regex(/href=.*?helio[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on :macos

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
