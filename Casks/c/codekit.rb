cask "codekit" do
  version "3.29,34592"
  sha256 "ec2eb64c6968ccf220848a36fbd39b5099fa4cd17ac08ec3af532573619bc1f2"

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
