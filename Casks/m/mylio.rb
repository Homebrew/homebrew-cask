cask "mylio" do
  version "24.2.7731"
  sha256 :no_check

  url "https://myliodownloads.com/Mylio.dmg",
      verified: "myliodownloads.com/"
  name "Mylio"
  desc "Photo organiser"
  homepage "https://mylio.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "Mylio.app"

  zap trash: [
    "~/Library/Application Support/Mylio",
    "~/Library/Caches/mylollc.Mylio",
    "~/Library/HTTPStorages/mylollc.Mylio",
    "~/Library/Preferences/mylollc.Mylio.plist",
    "~/Mylio",
  ]
end
