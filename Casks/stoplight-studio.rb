cask "stoplight-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm64"

  version "2.8.0,7236.git-cc3bce2"

  if Hardware::CPU.intel?
    sha256 "68591adcadafcd95b9efb64b978709bbfd3fc01a263d4f60413e8fc88c0f115e"
  else
    sha256 "1ca94b94ba97fcdd88c68769423452a12e81706d818882bb518df0002fa745f3"
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
