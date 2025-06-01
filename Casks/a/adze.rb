cask "adze" do
  version "1.4.12"
  sha256 :no_check

  url "https://getadze.com/static/main/releases/Adze.zip"
  name "Adze"
  desc "Edit GPX documents"
  homepage "https://getadze.com/"

  disable! date: "2025-06-01", because: :no_longer_available

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Adze.app"

  zap trash: [
    "~/Library/Caches/com.Kobot.Adze",
    "~/Library/Preferences/com.Kobot.Adze.plist",
  ]

  caveats do
    requires_rosetta
  end
end
