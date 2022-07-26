cask "sameboy" do
  version "0.15.3"
  sha256 "884361bb646148b939a2b7657f04a251b08d2ce990fc55f54cb2a0262629a6b8"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip",
      verified: "github.com/LIJI32/SameBoy/"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://sameboy.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "SameBoy.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.liji32.sameboy.sfl2",
    "~/Library/Caches/com.github.liji32.sameboy",
    "~/Library/Preferences/com.github.liji32.sameboy.plist",
    "~/Library/Saved Application State/com.github.liji32.sameboy.savedState",
  ]
end
