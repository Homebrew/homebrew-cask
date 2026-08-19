cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "e1e5ca628fe41b12d17da9b4aacb1f82b33126657c9c3e1f0e6c44ef6a7dc9f1",
         intel: "e7bb40c8419f168a488721004b0b0193d1fa75ac8ed378b051c39bed80962dec"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{arch}-#{version}.dmg",
      verified: "dl.eviware.com/ready-api/"
  name "ReadyAPI Desktop"
  desc "Automated API testing platform"
  homepage "https://smartbear.com/product/ready-api/"

  livecheck do
    url "https://support.smartbear.com/readyapi/docs/en/what-s-new/version-history.html"
    regex(/>\s*Ready(?:!\s+)?API\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "ReadyAPI-#{version}.app"

  zap trash: [
    "~/.readyapi",
    "~/Library/Application Support/ReadyAPI-#{version}",
    "~/Library/Preferences/com.smartbear.ready.plist",
  ]
end
