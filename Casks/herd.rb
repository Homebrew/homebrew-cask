cask "herd" do
  version "1.0.8"
  sha256 "39a709014c361a1b63bb5fde2a43b9bd55c0256e2582f19851bb1fdae6ce8658"

  url "https://download.herdphp.com/app_versions/Herd_#{version}.dmg",
      verified: "download.herdphp.com/app_versions/"
  name "Laravel Herd"
  desc "Laravel and PHP development environment manager"
  homepage "https://herd.laravel.com/"

  livecheck do
    url "https://herd.laravel.com/api/versions"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Herd.app"

  uninstall delete: "/etc/sudoers.d/herd",
            quit:   "Herd.app"

  zap trash: [
    "~/Herd",
    "~/Library/Application Support/Herd",
    "~/Library/Caches/de.beyondco.herd",
    "~/Library/HTTPStorages/de.beyondco.herd",
    "~/Library/Preferences/de.beyondco.herd.plist",
    "~/Library/Saved Application State/de.beyondco.herd.savedState",
  ]
end
