cask "aphera" do
  version "1.7.0"
  sha256 "a559a468ee83f63138d76f0c16ccedff2ffa927e2b895e16f3077f04a051c3ad"

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
