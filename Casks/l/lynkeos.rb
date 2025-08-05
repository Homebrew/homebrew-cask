cask "lynkeos" do
  version "3.9"
  sha256 "b1236393e7ca75ed782daaf8b76f3230ef83764a56b3a388a9b5e7c5d6e0be25"

  url "https://downloads.sourceforge.net/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip",
      verified: "downloads.sourceforge.net/lynkeos/"
  name "Lynkeos"
  desc "Astronomical webcam image processing software"
  homepage "https://lynkeos.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/lynkeos/rss?path=/lynkeos"
    regex(%r{url=.*?/v?(\d+(?:\.\d+)+)/Lynkeos[._-]App[\d._-]*\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.lynkeos.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/Lynkeos help*",
    "~/Library/Preferences/net.sourceforge.lynkeos.plist",
    "~/Library/Saved Application State/net.sourceforge.lynkeos.savedState",
  ]
end
