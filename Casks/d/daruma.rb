cask "daruma" do
  version "1.2.5"
  sha256 :no_check

  url "https://delivery.kadomaru.app/daruma/Daruma.dmg"
  name "Daruma"
  desc "Track your goals using the Daruma Method"
  homepage "https://kadomaru.app/daruma/"

  livecheck do
    url "https://delivery.kadomaru.app/daruma/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Daruma.app"

  zap trash: [
    "~/Library/Application Support/Daruma",
    "~/Library/Caches/app.kadomaru.daruma",
    "~/Library/HTTPStorages/app.kadomaru.daruma",
    "~/Library/Preferences/app.kadomaru.daruma.plist",
    "~/Library/WebKit/app.kadomaru.daruma",
  ]
end
