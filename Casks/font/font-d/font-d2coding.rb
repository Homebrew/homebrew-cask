cask "font-d2coding" do
  version "1.4.0,20261003"
  sha256 "17e2da5e2879006eb725b87943f7988736ef8b6c9f8b84bc8e3bdbcb8dd46744"

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
