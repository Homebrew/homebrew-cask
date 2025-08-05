cask "font-d2coding" do
  version "1.3.2,20180524"
  sha256 "0f1c9192eac7d56329dddc620f9f1666b707e9c8ed38fe1f988d0ae3e30b24e6"

  url "https://github.com/naver/d2codingfont/releases/download/VER#{version.csv.first}/D2Coding-Ver#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "D2 Coding"
  homepage "https://github.com/naver/d2codingfont"

  livecheck do
    url :url
    regex(/D2Coding[._-](?:Ver|v)?v?(\d+(?:\.\d+)+)(?:-(v?(\d+(?:\.\d+)*)))?\.zip/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[2] ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  font "D2Coding/D2Coding-Ver#{version.before_comma}-#{version.after_comma}.ttc"

  # No zap stanza required
end
