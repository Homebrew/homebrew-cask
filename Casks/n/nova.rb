cask "nova" do
  version "14"
  sha256 "9b327a9e16101ba06b46291e4905718b6062df73642ad753cbbe9f213a468104"

  url "https://panic.com/download/nova/Nova%20#{version}.zip",
      verified:   "panic.com/download/nova/",
      user_agent: :browser
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  livecheck do
    url "https://circle.panic.com/api/v1/appcast/nova/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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
