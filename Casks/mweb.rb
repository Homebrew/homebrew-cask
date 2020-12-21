cask "mweb" do
  version "3.4.4,1607678309"
  sha256 :no_check

  url "https://dl.devmate.com/com.coderforart.MWeb#{version.major}/#{version.before_comma}/#{version.after_comma}/MWeb#{version.major}-ProMarkdownwriting,notetakingandstaticbloggeneratorApp-#{version.before_comma}.zip",
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
