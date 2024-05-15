cask "font-d2coding" do
  version "1.3.2,20180524"
  sha256 "0f1c9192eac7d56329dddc620f9f1666b707e9c8ed38fe1f988d0ae3e30b24e6"

  url "https://github.com/naver/d2codingfont/releases/download/VER#{version.csv.first}/D2Coding-Ver#{version.csv.first}-#{version.csv.second}.zip"
  name "D2 Coding"
  homepage "https://github.com/naver/d2codingfont"

  livecheck do
    url "https://github.com/naver/d2codingfont/releases/latest"
    strategy :page_match do |page|
      page.scan(/href=.*?D2Coding[._-](?:Ver)?(\d+(?:\.\d+)+)[_-](\d+)\.zip/i)
          .map { |matches| "#{matches[0]},#{matches[1]}" }
    end
  end

  font "D2Coding/D2Coding-Ver#{version.before_comma}-#{version.after_comma}.ttc"

  # No zap stanza required
end
