cask "nkoda" do
  version "2.1.22"
  sha256 :no_check

  url "https://nkodaprodappcenterbuilds.blob.core.windows.net/web-download/nkoda-app-mac.zip",
      verified: "nkodaprodappcenterbuilds.blob.core.windows.net/web-download/"
  name "nkoda"
  desc "Digital sheet music app"
  homepage "https://www.nkoda.com/download/mac"

  livecheck do
    url "https://cms.nkoda.com/api/appsettings?platform=Mac-Custom&version=#{version}"
    strategy :json do |json|
      json.dig("LastVersion", "Version")
    end
  end

  app "nkoda.app"

  uninstall quit: "com.nkoda.macapp"

  zap trash: [
    "~/Library/Application Scripts/com.nkoda.macapp",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nkoda.macapp.sfl*",
    "~/Library/Containers/com.nkoda.macapp",
  ]

  caveats do
    requires_rosetta
  end
end
