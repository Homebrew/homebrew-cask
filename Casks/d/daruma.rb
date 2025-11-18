cask "daruma" do
  version "1.2.3"
  sha256 :no_check

  url "https://delivery.kadomaru.app/daruma/Daruma.dmg"
  name "daruma"
  desc "Daruma is an app to track your goals using the Daruma Method."
  homepage "https://kadomaru.app/daruma/"

  livecheck do
    url "https://delivery.kadomaru.app/daruma/appcast.xml"
    strategy :sparkle, &:short_version
  end

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