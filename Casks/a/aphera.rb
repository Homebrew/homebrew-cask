cask "aphera" do
  version "1.2.1"
  sha256 "7f27359cad4d9b4e6a1e3b54bc9a15989d2d9692cef1cf0a130945b92b4bb2ea"

  url "https://releases.aphera.app/Aphera.#{version}.dmg",
      verified: "releases.aphera.app/"
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
