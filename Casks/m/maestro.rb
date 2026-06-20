cask "maestro" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "ad713b65e7ede46d51df13a9a77bb48a5ec22d87f95c2f42928e38fc772b884e",
         intel: "260c729bd95681e37c19ac5093f1b32bed1c9b9b09bcde1bd0cd72d6bfaafc9f"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version.csv.second || version.csv.first}/Maestro-#{version.csv.second || version.csv.first}-#{arch}-mac.dmg",
      verified: "github.com/pedramamini/Maestro/"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-RC)?)/i)
    strategy :github_latest do |json, regex|
      version = json["name"]&.[](regex, 1)
      tag_version = json["tag_name"]&.[](regex, 1)
      next if version.blank? || tag_version.blank?

      (version == tag_version) ? tag_version : "#{version},#{tag_version}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
