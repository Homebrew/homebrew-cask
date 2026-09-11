cask "font-d2coding" do
  version "1.3.3,20260725"
  sha256 "c2a6e364d4102eb2c4de52ffe3d76317c1f4c045e3737e022e69ee0be47f31e2"

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
