cask "icanhazshortcut" do
  version "2.0.0"
  sha256 "7f45636bd2e47cc73a29cb4dfe36904f157897f602176712b118d68de4af1045"

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
