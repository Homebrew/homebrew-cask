cask "managed-app-schema-builder" do
  version "1.2.1"
  sha256 "a86adbded2a773860782c863a2e0e98675dac0f3b45f201e97995af73ceb15ec"

  url "https://github.com/BIG-RAT/Managed-App-Schema-Builder/releases/download/v#{version}/Managed.App.Schema.Builder.zip"
  name "Managed App Schema Builder"
  desc "Builds managed app configuration schemas"
  homepage "https://github.com/BIG-RAT/Managed-App-Schema-Builder"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Managed App Schema Builder.app"

  zap trash: [
    "~/Library/Caches/com.jamf.pse.ManagedAppSchemaBuilder",
    "~/Library/HTTPStorages/com.jamf.pse.ManagedAppSchemaBuilder",
    "~/Library/Preferences/com.jamf.pse.ManagedAppSchemaBuilder.plist",
    "~/Library/Saved Application State/com.jamf.pse.ManagedAppSchemaBuilder.savedState",
  ]
end
