cask "maestro" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "cb1f5324670caa57f38e303480e7592afa9df9b04ab2796f926afb02b36b9540",
         intel: "45cb621b9ed50c8be69ba8b1814b3415838c45b7e0c75365e1199c9baa2fc414"

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
