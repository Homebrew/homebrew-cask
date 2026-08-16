cask "downright" do
  version "1.0.16,186,27a82e3183d1db27b292947eb4b64618e7a2a920"
  sha256 "ce60c6fd3076c71e1b40dfbb2fced147155236a0eb7a0922b2dde9206f375428"

  url "https://github.com/ezzy1630/Downright/releases/download/auto-#{version.csv.third}/Downright-#{version.csv.first}-#{version.csv.second}-#{version.csv.third[0, 12]}.dmg",
      verified: "github.com/ezzy1630/Downright/"
  name "Downright"
  desc "Native Markdown reader and editor"
  homepage "https://downright.cc/"

  livecheck do
    url :url
    regex(%r{/auto-([0-9a-f]{40})/Downright[._-](\d+(?:\.\d+)+)[._-](\d+)[._-]([0-9a-f]{12})\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[3]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Downright.app"
end
