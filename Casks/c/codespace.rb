cask "codespace" do
  version "1.6.1"
  sha256 :no_check

  url "https://codespace.app/download/latest"
  name "Codespace"
  desc "Code snippet manager"
  homepage "https://codespace.app/"

  livecheck do
    url :url
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
