cask "lynkeos" do
  version "3.8"
  sha256 "b018e9812561cf1cc6a0dd0483c1770a4dcb4295c67cf43c17bea83e8449d40a"

  url "https://downloads.sourceforge.net/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip",
      verified: "downloads.sourceforge.net/lynkeos/"
  name "Lynkeos"
  desc "Astronomical webcam image processing software"
  homepage "https://lynkeos.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/lynkeos/rss?path=/lynkeos"
    regex(%r{url=.*?/v?(\d+(?:\.\d+)+)/Lynkeos[._-]App[\d._-]*\.zip}i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :high_sierra"

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.lynkeos.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/Lynkeos help*",
    "~/Library/Preferences/net.sourceforge.lynkeos.plist",
    "~/Library/Saved Application State/net.sourceforge.lynkeos.savedState",
  ]
end
