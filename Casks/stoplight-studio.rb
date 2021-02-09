cask "stoplight-studio" do
  version "2.2.0,5379.git-75c5189"
  sha256 "829b41a2d24329837b3bc9335d7dd01c403ce6f871a2c71aadc0fa126f071317"

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
