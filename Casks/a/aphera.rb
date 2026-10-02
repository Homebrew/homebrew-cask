cask "aphera" do
  version "1.6.0"
  sha256 "c948b6a00f3152df2badcffd34a37d802df83c38c60b54425e1436d9175a2542"

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
