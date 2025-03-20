cask "chime@alpha" do
  version "3.0.0,205"
  sha256 "c81932326b5b1a063c4540c03dff0a50acc6766fbc41b680b3706d2a40711db0"

  url "https://github.com/ChimeHQ/Chime/releases/download/#{version.csv.second}/Chime.zip",
      verified: "github.com/ChimeHQ/Chime/"
  name "Chime"
  desc "Text and code editor"
  homepage "https://www.chimehq.com/"

  livecheck do
    url "https://updates.chimehq.com/com.chimehq.Edit/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "chime"
  depends_on macos: ">= :sonoma"

  app "Chime.app"

  uninstall quit: [
    "com.chimehq.ChimeKit",
    "com.chimehq.Edit",
    "com.chimehq.Edit.*",
    "com.chimehq.EditKit",
  ]

  zap trash: [
    "~/Library/Application Scripts/*.com.chimehq.Edit",
    "~/Library/Application Scripts/com.chimehq.Edit.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.chimehq.edit.sfl*",
    "~/Library/Containers/com.chimehq.Edit.*",
    "~/Library/Group Containers/*.com.chimehq.Edit",
    "~/Library/HTTPStorages/com.chimehq.Edit",
    "~/Library/Preferences/com.chimehq.Edit.plist",
  ]
end
