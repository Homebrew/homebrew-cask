cask "replicator" do
  version "8.0.0"
  sha256 "68943248106a3b0c737e1d3bac3d3ba24fb7817cc4e54678d0f90783c6f0b504"

  url "https://github.com/jamf/Replicator/releases/download/v#{version}/Replicator.zip"
  name "Replicator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/Replicator"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Replicator.app"

  zap trash: [
    "~/Library/Application Scripts/com.jamf.jamf-migrator",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jamf.jamf-migrator.sfl*",
    "~/Library/Containers/com.jamf.jamf-migrator",
  ]
end
