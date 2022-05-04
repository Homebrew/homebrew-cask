cask "stoplight-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm64"

  version "2.8.0,7492.git-68a3857"

  if Hardware::CPU.intel?
    sha256 "621439d78c1ee5404265628437577e5ca4bc668855d9bc21f1dd27aacca49b98"
  else
    sha256 "e2203591a235a4da55e20bb6fbfeb39c11451881783d60abfc73e753fcaf5af1"
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
