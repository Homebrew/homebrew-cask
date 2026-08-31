cask "mongrel" do
  version "5.72.6,255c8639-ec52-4120-91a1-b76b2f07a46c"
  sha256 "ceaa902a20fb5906c07c67a46b843ba9193b91edbd335e3de57221d4538fac3e"

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
