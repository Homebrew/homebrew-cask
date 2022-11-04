cask "adze" do
  version "1.4.12,7412"
  sha256 :no_check

  url "https://getadze.com/static/main/releases/Adze.zip"
  name "Adze"
  desc "Edit GPX documents"
  homepage "https://getadze.com/"

  livecheck do
    url "https://getadze.com/static/main/updates/adze.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Adze.app"

  zap trash: [
    "~/Library/Caches/com.Kobot.Adze",
    "~/Library/Preferences/com.Kobot.Adze.plist",
  ]
end
