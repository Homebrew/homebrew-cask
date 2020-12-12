cask "dmenu-mac" do
  version "0.5.0"
  sha256 "a930912caecfa5ba10f7926741bf0fddf847ba3bd982f4f5149ae0d1e53842ec"

  url "https://github.com/oNaiPs/dmenu-mac/releases/download/#{version}/dmenu-mac.zip"
  appcast "https://github.com/oNaiPs/dmenu-mac/releases.atom"
  name "dmenu-mac"
  homepage "https://github.com/oNaiPs/dmenu-mac"

  app "dmenu-mac.app"

  zap trash: [
    "~/Library/Application Scripts/com.onaips.dmenu-macos",
    "~/Library/Containers/com.onaips.dmenu-macos",
  ]
end
