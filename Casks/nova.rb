cask "nova" do
  version "8"
  sha256 "b3842b1acf258a5336d6323e3cffc7bffcf20ab3db16a8d57684dd0770d65701"

  url "https://download-cdn.panic.com/nova/Nova%20#{version}.zip",
      verified: "https://download-cdn.panic.com/nova/"
  name "Panic Nova"
  desc "Native code editor"
  homepage "https://nova.app/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Nova(?:\s*|%20)?(\d+(?:\.\d+)*)\.zip}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Nova.app"
  binary "#{appdir}/Nova.app/Contents/SharedSupport/nova"

  zap trash: [
    "/Library/LaunchDaemons/com.panic.NovaPrivilegedHelper.plist",
    "/Library/PrivilegedHelperTools/com.panic.NovaPrivilegedHelper",
    "~/Library/Application Scripts/com.panic.Nova.NovaQuickLookPreview",
    "~/Library/Application Scripts/com.panic.Nova.NovaQuickLookThumbnail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.nova.sfl2",
    "~/Library/Caches/com.panic.Nova",
    "~/Library/Containers/com.panic.Nova.NovaQuickLookPreview",
    "~/Library/Containers/com.panic.Nova.NovaQuickLookThumbnail",
    "~/Library/Preferences/com.panic.Nova.plist",
    "~/Library/WebKit/com.panic.Nova",
  ]
end
