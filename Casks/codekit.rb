cask "codekit" do
  version "3.14.3,34081"
  sha256 "5b310c319f1cb632f6cf7e0a4a371a0e788aef7d01934c830f45f4a17e90647a"

  url "https://codekitapp.com/binaries/codekit-#{version.after_comma}.zip"
  name "CodeKit"
  desc "App for building websites"
  homepage "https://codekitapp.com/"

  livecheck do
    url "https://codekitapp.com/api/#{version.major}/appcast.xml"
    strategy :sparkle
  end

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
