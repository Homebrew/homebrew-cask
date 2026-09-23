cask "look" do
  version "0.7.1"
  sha256 "dfe0b638227ae9c7b8b817d40ae2b8ed6a75670eaa91ba96b1891b8844b1d2f8"

  url "https://github.com/kunkka19xx/look/releases/download/v#{version}/Look-#{version}-macOS.zip"
  name "Look"
  desc "Keyboard-first local launcher"
  homepage "https://github.com/kunkka19xx/look"

  livecheck do
    url :url
    strategy :github_latest
  end

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
