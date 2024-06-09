cask "kangaroo-multiple" do
  version "5.0.0.240601"
  sha256 "c11e6f3aa3fa7cea30ec52a2c30a1677a337d9e59b248ee04ca1c21b2a0a5890"

  url "https://github.com/dbkangaroo/kangaroo/releases/download/v#{version}/kangaroo-multiple-#{version}-x86_64.dmg"
  name "Kangaroo multiple"
  desc "Native GUI SQL client and admin tool for popular databases"
  homepage "https://github.com/dbkangaroo/kangaroo"

  livecheck do
    cask "kangaroo-multiple"
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "kangaroo.app"

  zap trash: [
    "~/Library/Application Support/org.gnome.KangarooDevel",
    "~/Library/Caches/org.gnome.KangarooDevel",
    "~/Library/Preferences/org.gnome.KangarooDevel.plist",
    "~/Library/Saved Application State/org.gnome.KangarooDevel.savedState"
  ]
end
