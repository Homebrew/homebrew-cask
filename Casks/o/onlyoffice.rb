cask "onlyoffice" do
  arch arm: on_system_conditional(macos: "arm", linux: "arm64"), intel: "x86_64"

  on_macos do
    version "10.0.0"
    sha256 arm:   "9095cc8c46f1206237d690c7e146fada0d72dbf7f40c035cd5fd218b680c2deb",
           intel: "769f514a1030aad3af0d654dff22b93ea11689afa3a59b98579a3ea19e3fa7a4"

    url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg"

    livecheck do
      url :url
      strategy :github_latest
    end

    auto_updates true

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
    version "9.4.0"
    sha256 arm64_linux:  "7dfc2fa195ff9912a4022841613b9a99fdba2a238792648f257007a7df887b7c",
           x86_64_linux: "f5faf24552665262fe94486a510b997d2e5a24bde14df94c802c79bf17f9254c"

    url "https://github.com/ONLYOFFICE/appimage-desktopeditors/releases/download/v#{version}/DesktopEditors-#{arch}.AppImage"

    livecheck do
      url :url
      strategy :github_latest
    end

    app_image "DesktopEditors-#{arch}.AppImage", target: "ONLYOFFICE.AppImage"
  end

  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"
end
