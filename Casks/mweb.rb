cask "mweb" do
  version "3.4.4,1607678309"
  sha256 "8ee686c3a54301a8809afbf6f38ea97cecdd805e8dd00a5e67d55f314304b942"

  url "https://dl.devmate.com/com.coderforart.MWeb#{version.major}/#{version.before_comma}/#{version.after_comma}/MWeb#{version.major}-ProMarkdownwriting,notetakingandstaticbloggeneratorApp-#{version.before_comma}.dmg",
      verified: "dl.devmate.com/com.coderforart.MWeb#{version.major}/"
  name "MWeb"
  desc "Markdown writing, note taking, and static blog generator app"
  homepage "https://www.mweb.im/"

  livecheck do
    url "https://updates.devmate.com/com.coderforart.MWeb#{version.major}.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.url[%r{/(\d+)/MWeb}i, 1]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "MWeb.app"
end
