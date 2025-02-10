cask "codespace" do
  version "1.6.1"
  sha256 "a0ea71a761820080493be13bb75f7651d38588203999b31e8c37c0164a0216b7"

  url "https://codespace.app/download/#{version}"
  name "Codespace"
  desc "Code snippet manager"
  homepage "https://codespace.app/"

  livecheck do
    url "https://codespace.app/download/latest"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "Codespace.app"

  zap trash: [
    "~/Library/Application Support/Codespace",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tristanedwards.codespace.sfl*",
    "~/Library/Logs/CodeSpace",
    "~/Library/Preferences/com.tristanedwards.codespace.plist",
    "~/Library/Saved Application State/com.tristanedwards.codespace.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
