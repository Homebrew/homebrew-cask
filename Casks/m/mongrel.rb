cask "mongrel" do
  version "5.75.19,5fb92963-7670-4778-95bf-d3e9aee4a3ef"
  sha256 "adfdb5bfb0b34d07b80b7daccd9922fb261a71d86dfdb31cd520f164ef3c1b21"

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
