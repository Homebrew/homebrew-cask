cask "aphera" do
  version "1.4.0"
  sha256 "be6b0490a41926cff7ccd86d78ff263f2c5a6186c35211be9bd316070eefcf7e"

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
