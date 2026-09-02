cask "nova" do
  version "14.1"
  sha256 "80d090495a4b43b78e8558ddc161fd30adafdac287b7a8cafdd9c7fd9cc9940f"

  url "https://panic.com/download/nova/Nova%20#{version}.zip",
      user_agent: :browser
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  livecheck do
    url "https://circle.panic.com/api/v1/appcast/nova/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Nova.app"
  binary "#{appdir}/Nova.app/Contents/SharedSupport/nova"
  zsh_completion "#{appdir}/Nova.app/Contents/Resources/nova_completions.txt",
                 target: "_nova"

  uninstall delete: [
    "/Library/LaunchDaemons/com.panic.NovaPrivilegedHelper.plist",
    "/Library/PrivilegedHelperTools/com.panic.NovaPrivilegedHelper",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.panic.Nova.NovaQuickLookPreview",
    "~/Library/Application Scripts/com.panic.Nova.NovaQuickLookThumbnail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.nova.sfl*",
    "~/Library/Caches/com.panic.Nova",
    "~/Library/Containers/com.panic.Nova.NovaQuickLookPreview",
    "~/Library/Containers/com.panic.Nova.NovaQuickLookThumbnail",
    "~/Library/Preferences/com.panic.Nova.plist",
    "~/Library/WebKit/com.panic.Nova",
  ]
end
