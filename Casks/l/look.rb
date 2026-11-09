cask "look" do
  arch intel: "-x86_64"

  version "0.7.4"
  sha256 arm:   "dfa451f39df55c8344f9cdb67d6ba8209bbb7a658bb09ac9ae2c3b3832e9b725",
         intel: "31091834af9cdaee24c1372e41857a1220e0df3e82583146694c1007a144237a"

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
