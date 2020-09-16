cask "boostnote" do
  version "0.16.1"
  sha256 "518b562f7139d4a50f75cba2c4221913c22bcb88f1e322c6c942119b3f3bc1bf"

  # github.com/BoostIO/boost-releases/ was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.zip"
  appcast "https://github.com/BoostIO/boost-releases/releases.atom"
  name "Boostnote"
  desc "Markdown editor for developers"
  homepage "https://boostnote.io/"

  auto_updates true

  app "Boostnote.app"

  uninstall signal: [
    ["TERM", "com.maisin.boost.helper"],
    ["TERM", "com.maisin.boost"],
  ]

  zap trash: [
    "~/Library/Application Support/boost",
    "~/Library/Preferences/com.maisin.boost.plist",
    "~/Library/Preferences/com.maisin.boost.helper.plist",
    "~/Library/Saved Application State/com.maisin.boost.savedState",
  ]
end
