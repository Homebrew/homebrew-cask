cask "stoplight-studio" do
  arch arm: "mac-arm64", intel: "mac"

  version "2.10.0,8821.git-e47fcf5"
  sha256 arm:   "8fa4cec94d1f719e3dded74439d952a78e014657abc6b9e8b44ab4108c8072f2",
         intel: "17dcfc5aac788608cf1516801094a9dca19f1de6989380296ce8752965b545e7"

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
