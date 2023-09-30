cask "gittyup" do
  version "1.3.0"
  sha256 "8582bc3e8628523d08515356a7e9655e519e2872dbfdcc6f2925a80188ac5ac6"

  url "https://github.com/Murmele/Gittyup/releases/download/gittyup_v#{version}/Gittyup-#{version}.dmg",
      verified: "github.com/Murmele/Gittyup/"
  name "gittyup"
  desc "Graphical Git client"
  homepage "https://murmele.github.io/Gittyup/"

  livecheck do
    url :url
    regex(/^Gittyup[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true

  app "Gittyup.app"

  zap trash: [
    "~/Library/Application Support/Gittyup",
    "~/Library/Preferences/com.Murmele.Gittyup.plist",
    "~/Library/Preferences/com.github.gittyup.Gittyup.plist",
    "~/Library/Saved Application State/com.Murmele.Gittyup.savedState",
  ]
end
