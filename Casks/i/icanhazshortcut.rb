cask "icanhazshortcut" do
  version "1.3.0"
  sha256 "f2b8a8b2eb7c099f4a5df31613d9828ff25fa200bcef4e39b41074736511186b"

  url "https://github.com/deseven/icanhazshortcut/releases/download/#{version}/ichs.dmg"
  name "iCanHazShortcut"
  desc "Shortcut manager"
  homepage "https://github.com/deseven/icanhazshortcut/"

  app "iCanHazShortcut.app"

  uninstall quit: "info.deseven.icanhazshortcut"

  zap trash: "~/Library/Preference/info.deseven.icanhazshortcut"

  caveats do
    requires_rosetta
  end
end
