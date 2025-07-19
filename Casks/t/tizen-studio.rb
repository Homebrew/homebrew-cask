cask "tizen-studio" do
  version "6.1"
  sha256 "a9b0afc01923dbd8bb8c927c6ffaeb4f108a3830a8be33ddc839e58f92ab2392"

  url "https://download.tizen.org/sdk/Installer/tizen-studio_#{version}/web-ide_Tizen_Studio_#{version}_macos-64.dmg"
  name "Tizen Studio"
  desc "Official IDE for developing web and native applications for Tizen"
  homepage "https://developer.tizen.org/development/tizen-studio"

  livecheck do
    url "https://developer.tizen.org/development/tizen-studio/download"
    strategy :page_match
    regex(/tizen-studio[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  installer manual: "installer.app"

  uninstall delete: [
    "~/tizen-studio",
    "~/tizen-studio-data",
  ]

  zap trash: [
    "~/.package-manager",
    "~/Library/Preferences/org.tizen.sdk.ide.plist",
    "~/workspace",
  ]

  caveats <<~EOS
    This only downloads and stages the installer.
    You will need to run the open command given later to finish installation.
    For full functionality, you may need to install:
        - Google Chrome (for Web Inspector): brew install --cask google-chrome
        - gettext (for building PO files): brew install gettext
    Please check the https://docs.tizen.org/application/tizen-studio/setup/prerequisites/ for a full list.

    Note --zap will only remove the default workspace (~/workspace) Tizen recommends.

  EOS
end
