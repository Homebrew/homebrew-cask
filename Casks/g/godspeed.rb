cask "godspeed" do
  version "1.0.3"
  sha256 "1d95b4dbe1d8ed8ffe384acdfc58ad97bb5b296636e8e67fb406c266ee4e49f5"

  url "https://com-godspeedapp-app-versions.s3.us-west-1.amazonaws.com/#{version}/Godspeed.zip",
      verified: "com-godspeedapp-app-versions.s3.us-west-1.amazonaws.com/"
  name "Godspeed"
  desc "Keyboard-focused todo manager"
  homepage "https://godspeedapp.com/"

  livecheck do
    url "https://api.godspeedapp.com/update-check/latest"
    strategy :json do |json|
      json["name"]&.tr("v", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Godspeed.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.godspeedapp.*",
    "~/Library/Application Support/Godspeed",
    "~/Library/Caches/com.godspeedapp.Godspeed",
    "~/Library/Caches/com.godspeedapp.Godspeed.ShipIt",
    "~/Library/HTTPStorages/com.godspeedapp.Godspeed",
    "~/Library/Preferences/com.godspeedapp.Godspeed.plist",
    "~/Library/Saved Application State/com.godspeedapp.Godspeed.savedState",
  ]
end
