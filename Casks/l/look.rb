cask "look" do
  arch intel: "-x86_64"

  version "0.7.3"
  sha256 arm:   "4edb466f7acac47cd81ab3c9fd9d817179f14bb24e1c2d52f13a942e9c08005c",
         intel: "09329add74885f334e06106568705b2f8f91fe563afba84137ca847de13b87de"

  url "https://github.com/kunkka19xx/look/releases/download/v#{version}/Look-#{version}-macOS#{arch}.zip"
  name "Look"
  desc "Keyboard-first local launcher"
  homepage "https://github.com/kunkka19xx/look"

  depends_on macos: :sequoia

  app "Look.app"
  binary "#{appdir}/Look.app/Contents/MacOS/Look", target: "lookapp"

  uninstall quit: "noah-code.Look"

  zap trash: [
    "~/.look",
    "~/Library/Application Support/Look",
    "~/Library/Caches/noah-code.Look",
    "~/Library/HTTPStorages/noah-code.Look",
    "~/Library/HTTPStorages/noah-code.Look.binarycookies",
    "~/Library/Preferences/noah-code.Look.plist",
  ]
end
