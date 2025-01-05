cask "simpletex" do
  arch arm: "arm", intel: "x64"

  version "0.2.7"
  sha256 "f6804596e8e14ee539212201305b0fa2417393fc632cf3335516812bc6fe6cdc"

  url "https://update.simpletex.net/publish/electron/darwin/SimpleTex-#{version}.dmg"
  name "SimpleTex"
  desc "Formula snipping and recognition app"
  homepage "https://simpletex.net/"

  livecheck do
    url "https://simpletex.cn/download_mac_#{arch}_url"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "SimpleTex.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.spt.simpletex.sfl*",
    "~/Library/Application Support/SimpleTex",
    "~/Library/Preferences/com.spt.SimpleTex.plist",
    "~/Library/Saved Application State/com.spt.SimpleTex.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
