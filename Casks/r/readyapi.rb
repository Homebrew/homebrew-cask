cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "4.3.1"
  sha256 arm:   "46eccd1e132460d5716c6b8f23ef4d605c8c6fd09eb7163df0c6e21d865cd4e8",
         intel: "5135b1c61959ecbf4a2b264f37045bd7e83e1529dbab680feed2aa0d02b93b29"

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
    "~/Library/Preferences/com.install4j.3080-8797-1984-6034.102895.plist",
    "~/Library/Preferences/com.smartbear.ready.plist",
  ]
end
