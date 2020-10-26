cask "codekit" do
  version "3.13.2,33070"
  sha256 "4d085d2e70c7da47c68bedf5abb34a1056997344b534e4d9007a4a920900f5c2"

  url "https://codekitapp.com/binaries/codekit-#{version.after_comma}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml"
  name "CodeKit"
  desc "App for building websites"
  homepage "https://codekitapp.com/"

  auto_updates true

  app "CodeKit.app"

  zap trash: [
    "~/Library/Application Support/com.incident57.CodeKit#{version.major}",
    "~/Library/Caches/com.incident57.CodeKit#{version.major}",
    "~/Library/Cookies/com.incident57.CodeKit#{version.major}.binarycookies",
    "~/Library/Preferences/com.incident57.CodeKit#{version.major}.plist",
    "~/Library/Saved Application State/com.incident57.CodeKit#{version.major}.savedState",
  ]
end
