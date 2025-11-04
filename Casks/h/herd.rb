cask "herd" do
  version "1.23.0"
  sha256 "d3489eee1f76469f17a1939bb6a5040d4a6c26e33c148f2eb7223b5a3ae4bf3c"

  url "https://download.herdphp.com/app_versions/Herd_#{version}.dmg",
      verified: "download.herdphp.com/app_versions/"
  name "Laravel Herd"
  desc "Laravel and PHP development environment manager"
  homepage "https://herd.laravel.com/"

  livecheck do
    url "https://herd.laravel.com/api/versions"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Herd.app"

  uninstall quit:   "Herd.app",
            delete: "/etc/sudoers.d/herd"

  zap trash: [
    "~/Herd",
    "~/Library/Application Support/Herd",
    "~/Library/Caches/de.beyondco.herd",
    "~/Library/Caches/SentryCrash/Herd",
    "~/Library/HTTPStorages/de.beyondco.herd",
    "~/Library/HTTPStorages/de.beyondco.herd.binarycookies",
    "~/Library/Preferences/de.beyondco.herd.plist",
    "~/Library/Saved Application State/de.beyondco.herd.savedState",
    "~/Library/WebKit/de.beyondco.herd",
  ]
end
