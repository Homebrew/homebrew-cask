cask "ksnip" do
  version "1.8.0"
  sha256 "c17ae0d7e23678fa54f0b130ba7e29344dcb2ddd42ce95c5535b7b2f87bcf68c"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  name "ksnip"
  homepage "https://github.com/ksnip/ksnip"

  livecheck do
    url :url
    strategy :git
  end

  app "ksnip.app"
end
