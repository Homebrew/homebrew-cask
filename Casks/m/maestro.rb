cask "maestro" do
  arch arm: "arm64", intel: "x64"

  version "0.17.3"
  sha256 arm:   "d6fab4ca577567f85013b23346d147823a06b87ab36e066259ec02d50d958eb5",
         intel: "96bd5b8457fd75de00054d4c4d3c57549ac284309d2ef622525f102b5fb248d3"

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
