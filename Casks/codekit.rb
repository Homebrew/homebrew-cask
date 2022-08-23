cask "codekit" do
  version "3.18.2,34418"
  sha256 "e5c0354b86cf01a93ac2a3f553e1383ea6657fccfc1acb224670b6c3a914b16a"

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
