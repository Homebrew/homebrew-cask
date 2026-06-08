cask "maestro" do
  arch arm: "arm64", intel: "x64"

  version "0.15.4,0.15.4-RC"
  sha256 arm:   "92861629e5a29ae5dfa0d4828eb51ff9dc883c8a7f9ac8d677ee18a410d8fbc6",
         intel: "d31ccd3d5ebbb788a6577c839094ce83c018f037bca130504fb7ce93fee1f4f1"

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
  depends_on macos: :catalina

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
