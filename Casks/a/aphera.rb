cask "aphera" do
  version "1.0.1"
  sha256 "738252cc00398d0f0fbe33549e21c22a48345be00e856e9661fe910ee7c7b962"

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
    "~/Library/Containers/co.latentco.Aphera",
    "~/Library/Containers/co.latentco.Aphera.QuickLook",
    "~/Library/Preferences/co.latentco.Aphera.plist",
  ]
end
