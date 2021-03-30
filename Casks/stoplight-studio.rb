cask "stoplight-studio" do
  version "2.3.0,5602.git-d17f9c7"
  sha256 "70438b38c40d7beed01ca0e0ac86e438fcf4f39bd7ed63eccf9a5d69466a7366"

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
