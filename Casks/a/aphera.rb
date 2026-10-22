cask "aphera" do
  version "1.8.0"
  sha256 "cd019229ca07d1b47a7e41a7682e4933310de67b72b4c438cb9ee6e822b6ff90"

  url "https://releases.aphera.app/Aphera.#{version}.dmg"
  name "Aphera"
  desc "Raw photo editing software"
  homepage "https://aphera.co/"

  livecheck do
    url "https://releases.aphera.app/latest"
    strategy :header_match
  end

  depends_on macos: :sequoia

  app "Aphera.app"

  zap trash: [
    "~/Library/Application Scripts/co.latentco.Aphera",
    "~/Library/Application Scripts/co.latentco.Aphera.QuickLook",
    "~/Library/Application Support/Aphera",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.latentco.aphera.sfl*",
    "~/Library/Caches/co.latentco.Aphera",
    "~/Library/Containers/co.latentco.Aphera",
    "~/Library/Containers/co.latentco.Aphera.QuickLook",
    "~/Library/HTTPStorages/co.latentco.Aphera",
    "~/Library/Preferences/co.latentco.Aphera.plist",
    "~/Library/WebKit/co.latentco.Aphera",
  ]
end
