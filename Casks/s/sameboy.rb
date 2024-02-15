cask "sameboy" do
  version "0.16.2"
  sha256 "158243fc604409d719c1c88aeb0c4aaad09a4c17cdb4da0429ba0a4bdb212ac3"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip",
      verified: "github.com/LIJI32/SameBoy/"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://sameboy.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "SameBoy.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.liji32.sameboy.sfl*",
    "~/Library/Caches/com.github.liji32.sameboy",
    "~/Library/Preferences/com.github.liji32.sameboy.plist",
    "~/Library/Saved Application State/com.github.liji32.sameboy.savedState",
  ]
end
