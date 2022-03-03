cask "stoplight-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm64"

  version "2.8.0,7260.git-04f3365"

  if Hardware::CPU.intel?
    sha256 "9b08e460d6c3f587f8050d1bbf43905a2cdea8977d27761ae6b38df01445eb72"
  else
    sha256 "61304c1757c4414b7af304607aab42b205e1b690faeba99745a7955f4cc86be9"
  end

  url "https://github.com/stoplightio/studio/releases/download/v#{version.csv.first}-stable.#{version.csv.second}/stoplight-studio-#{arch}.dmg",
      verified: "github.com/stoplightio/studio/"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  livecheck do
    url "https://github.com/stoplightio/studio/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)+)[._-]stable[._-]([^/]+)/stoplight[._-]studio[._-]#{arch}\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Stoplight Studio.app"
end
