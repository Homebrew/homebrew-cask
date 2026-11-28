cask "look" do
  arch intel: "-x86_64"

  version "0.7.6"
  sha256 arm:   "6a01024ad0cda4098645500debe6c1448b53f18fe94d886ab4e78380b66b9c50",
         intel: "4864259eb0aae09fafe7a2118e85c70abe95a9faed08dfc47536a57df26de252"

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
