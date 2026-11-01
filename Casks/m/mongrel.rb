cask "mongrel" do
  version "5.74.1,6f475246-7d3a-4d9f-ba2a-82528057b0c6"
  sha256 "37c37cd43df5f61777a1e4ac9d14c0c3a18269a415899e02b5df6a59f187079b"

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
