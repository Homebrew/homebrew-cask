cask "mongrel" do
  version "5.72.1,d9c0a384-31b8-4a97-9dfe-1cabc8b3a31f"
  sha256 "b1dc06a1e2dd797649427d106545e5960a7a550cb1d400a37c04df7a98a3a3bd"

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

  depends_on :macos
  depends_on arch: :arm64

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
