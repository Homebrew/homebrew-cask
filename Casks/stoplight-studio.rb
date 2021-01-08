cask "stoplight-studio" do
  version "2.2.0,5288.8bf0d2e"
  sha256 "8542108cc761eb7e92240d7a1d5613a24f9a7fd98727d979f93fedf9978b52de"

  url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-mac.dmg",
      verified: "github.com/stoplightio/studio/"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  livecheck do
    url "https://github.com/stoplightio/studio/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*)-stable\.([^/]+)/stoplight-studio-mac\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Stoplight Studio.app"
end
