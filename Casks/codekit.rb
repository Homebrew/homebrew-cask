cask "codekit" do
  version "3.17,34359"
  sha256 "2fa3b4e22319a5d518541dc1ff6289f3fd74de3d589b2eab1116ca8686227125"

  url "https://codekitapp.com/binaries/codekit-#{version.csv.second}.zip"
  name "CodeKit"
  desc "App for building websites"
  homepage "https://codekitapp.com/"

  livecheck do
    url "https://codekitapp.com/api/#{version.major}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "CodeKit.app"

  zap trash: [
    "~/Library/Application Support/com.incident57.CodeKit#{version.major}",
    "~/Library/Caches/com.incident57.CodeKit#{version.major}",
    "~/Library/Cookies/com.incident57.CodeKit#{version.major}.binarycookies",
    "~/Library/Preferences/com.incident57.CodeKit#{version.major}.plist",
    "~/Library/Saved Application State/com.incident57.CodeKit#{version.major}.savedState",
  ]
end
