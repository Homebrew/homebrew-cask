cask "extraterm" do
  version "0.52.0"
  sha256 "4b0491ec5f0d83e65ea1fefc555ccaffd78afda0e825c41b301cd58b51eb4b04"

  # github.com/sedwards2009/extraterm/ was verified as official when first introduced to the cask
  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip"
  appcast "https://github.com/sedwards2009/extraterm/releases.atom"
  name "extraterm"
  homepage "https://extraterm.org/"

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
