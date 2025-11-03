cask "replicator" do
  version "8.4.0"
  sha256 "37124593b3dd29c9385a6bedb111dc0ccb49e3a56c00504ede547c5530d48271"

  url "https://github.com/jamf/Replicator/releases/download/v#{version}/Replicator.zip"
  name "Replicator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/Replicator"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "Replicator.app"

  zap trash: [
    "~/Library/Application Scripts/com.jamf.jamf-migrator",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jamf.jamf-migrator.sfl*",
    "~/Library/Containers/com.jamf.jamf-migrator",
  ]
end
