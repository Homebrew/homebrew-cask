cask "font-d2coding" do
  version "1.3.5,20261003"
  sha256 "c8c464a413584ab8ba42f3f7295fbeff47c116152b79f19a4b42cbe21cea9bac"

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
