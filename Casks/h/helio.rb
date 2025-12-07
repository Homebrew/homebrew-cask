cask "helio" do
  version "3.17"
  sha256 "11aec7e5bb4a234257eba6546223735c30bcb8b24b303797d2185bc1ef3a8381"

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
