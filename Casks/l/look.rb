cask "look" do
  arch intel: "-x86_64"

  version "0.7.5"
  sha256 arm:   "21038f118540682bd4a1db4a4a15b40b2b5e453457331737b4407b61cbac003d",
         intel: "b9c2247a8370373f784b7e0ce3d451725f450e570a5ebfc80ddee961b5555836"

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
