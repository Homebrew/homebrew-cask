cask "codekit" do
  version "3.37.2,36780"
  sha256 "4153623fedea7a2b59015a00e161c663e158ea20185c5c1d349e3a964a8d1c44"

  url "https://codekitapp.com/binaries/codekit-#{version.csv.second}.zip"
  name "CodeKit"
  desc "App for building websites"
  homepage "https://codekitapp.com/"

  livecheck do
    url "https://codekitapp.com/api/#{version.major}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "CodeKit.app"

  zap trash: [
    "~/Library/Application Support/com.incident57.CodeKit#{version.major}",
    "~/Library/Caches/com.incident57.CodeKit#{version.major}",
    "~/Library/Cookies/com.incident57.CodeKit#{version.major}.binarycookies",
    "~/Library/Preferences/com.incident57.CodeKit#{version.major}.plist",
    "~/Library/Saved Application State/com.incident57.CodeKit#{version.major}.savedState",
  ]
end
