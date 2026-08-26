cask "icanhazshortcut" do
  version "2.0.1"
  sha256 "95de7bfaf4a986ec5426ca720e4eda80fb233ad93b8294d2e5b65c3fd2ae6e7d"

  url "https://github.com/deseven/icanhazshortcut/releases/download/#{version}/ichs.dmg",
      verified: "github.com/deseven/icanhazshortcut/"
  name "iCanHazShortcut"
  desc "Shortcut manager"
  homepage "https://icanhazapps.d7.wtf/shortcut"

  depends_on macos: :ventura

  app "iCanHazShortcut.app"

  uninstall quit: "info.deseven.icanhazshortcut"

  zap trash: "~/Library/Preference/info.deseven.icanhazshortcut"
end
