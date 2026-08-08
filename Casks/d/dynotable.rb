cask "dynotable" do
  version "1.4.3"
  sha256 "7a0536b35865e81a607823a690bdcc1e8e35aca519818824f8c7061fdd86bcd9"

  url "https://dynotable.com/api/download/mac/#{version}/DynoTable-darwin-arm64-#{version}.zip"
  name "DynoTable"
  desc "GUI client for Amazon DynamoDB with SQL, PartiQL and an AI agent"
  homepage "https://dynotable.com/"

  livecheck do
    url "https://dynotable.com/api/version"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "DynoTable.app"

  zap trash: [
    "~/Library/Application Support/DynoTable",
    "~/Library/Preferences/com.dynotable.app.plist",
    "~/Library/Saved Application State/com.dynotable.app.savedState",
  ]
end
