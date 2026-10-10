cask "meta" do
  version "2.6.1"
  sha256 "40ed6e98742c5a200eb379a9db0d1fe8cf817f46867f894c70cb5706b237e214"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  livecheck do
    url "https://www.nightbirdsevolve.com/meta/updates/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Meta.app"

  uninstall quit: "com.nightbirdsevolve.Meta"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nightbirdsevolve.meta.sfl*",
    "~/Library/Application Support/Meta",
    "~/Library/Caches/com.nightbirdsevolve.Meta",
    "~/Library/HTTPStorages/com.nightbirdsevolve.Meta",
    "~/Library/HTTPStorages/com.nightbirdsevolve.Meta.binarycookies",
    "~/Library/Preferences/com.nightbirdsevolve.Meta.plist",
    "~/Library/Saved Application State/com.nightbirdsevolve.Meta.savedState",
  ]
end
