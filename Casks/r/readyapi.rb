cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "4.3.0"
  sha256 arm:   "428f122155df2255d34e9f02da75bee86bcdf6b080f244086d8eda3e09f24b57",
         intel: "c7f42aab4420e5fb1d3c4d6adc9b0eb5716e484003a503c8f382f82da42b4666"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{arch}-#{version}.dmg"
  name "ReadyAPI Desktop"
  desc "Automated API testing platform"
  homepage "https://smartbear.com/product/ready-api/"

  livecheck do
    url "https://support.smartbear.com/readyapi/docs/en/what-s-new/version-history.html"
    regex(/>\s*Ready(?:!\s+)?API\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "ReadyAPI-#{version}.app"

  # The app identifier has unique numeric parts like 3080-8797-1984-6034.102895.
  uninstall quit: [
    "com.install4j.3080-8797-1984-6034.102827",
    "com.install4j.3080-8797-1984-6034.102895",
  ]

  zap trash: [
    "~/.readyapi",
    "~/Library/Application Support/ReadyAPI-#{version}",
    "~/Library/Preferences/com.smartbear.ready.plist",
  ]
end
