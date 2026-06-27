cask "maestro" do
  arch arm: "arm64", intel: "x64"

  version "0.17.2"
  sha256 arm:   "1d0b1a381e412dab27b56e27faec2b1126ee11fae22f9ead49b00c3d7f68b539",
         intel: "5eb7839afca46512b9af62febff8c89745ce9e618270f7e8d218096e5b758a7d"

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
