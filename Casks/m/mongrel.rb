cask "mongrel" do
  version "5.72.17,9ac343e3-7aa1-4ba9-9883-2dcce0355adb"
  sha256 "63e515716cbde7461322d4d45d523885953ebc8663ab76af4e0a56abd41c3b96"

  url "https://www.visorcraft.com/api/downloads/mongrel/#{version.csv.second}"
  name "Mongrel"
  desc "Database workbench with terminals, containers, Kubernetes, and API client"
  homepage "https://www.visorcraft.com/"

  livecheck do
    url "https://www.visorcraft.com/api/downloads/mongrel"
    strategy :json do |json|
      json["files"]&.filter_map do |file|
        if file["platform"] == "macos" && file["arch"] == "arm64" &&
           file["channel"] == "stable" && file["file_name"]&.end_with?(".dmg")
          "#{file["version"]},#{file["id"]}"
        end
      end
    end
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Mongrel.app"

  zap trash: [
    "~/Library/Application Support/com.mongrel.desktop",
    "~/Library/Application Support/Mongrel",
    "~/Library/Caches/com.mongrel.desktop",
    "~/Library/HTTPStorages/com.mongrel.desktop",
    "~/Library/Logs/Mongrel",
    "~/Library/Preferences/com.mongrel.desktop.plist",
    "~/Library/Saved Application State/com.mongrel.desktop.savedState",
    "~/Library/WebKit/com.mongrel.desktop",
  ]
end
