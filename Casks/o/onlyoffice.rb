cask "onlyoffice" do
  on_macos do
    arch arm: "arm", intel: "x86_64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "9.4.0"
  sha256 arm:          "e965be2222609add6b5a70baa2a8cdb599402491fb2925825d9039dcb154beb4",
         x86_64:       "43ac517493c0c316f268ce4b7dc3810b77a7aefe83c0edc1655476d9f21681d2",
         arm64_linux:  "7dfc2fa195ff9912a4022841613b9a99fdba2a238792648f257007a7df887b7c",
         x86_64_linux: "f5faf24552665262fe94486a510b997d2e5a24bde14df94c802c79bf17f9254c"

  artifact = on_system_conditional macos: "ONLYOFFICE-#{arch}.dmg",
                                   linux: "DesktopEditors-#{arch}.AppImage"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/#{artifact}",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "ONLYOFFICE.app"

    zap trash: [
      "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/asc.onlyoffice.onlyoffice.sfl*",
      "~/Library/HTTPStorages/asc.onlyoffice.ONLYOFFICE",
      "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
      "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
    ]
  end

  on_linux do
    app_image artifact, target: "ONLYOFFICE.AppImage"
  end
end
