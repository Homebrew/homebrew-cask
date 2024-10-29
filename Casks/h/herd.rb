cask "herd" do
  version "1.11.2"
  sha256 "ade1b232c8d4a3ff3f318f72bfd9f5ccfeab81b48760a74425a2fd4d0a2d1fd5"

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
    "~/Library/HTTPStorages/de.beyondco.herd",
    "~/Library/Preferences/de.beyondco.herd.plist",
    "~/Library/Saved Application State/de.beyondco.herd.savedState",
  ]
end
