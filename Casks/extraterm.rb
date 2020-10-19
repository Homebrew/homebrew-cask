cask "extraterm" do
  version "0.54.0"
  sha256 "24297ca6f8bf2e87a5baef13a7a482c01a9229c143a660b5f3ed96c5c254f3fd"

  # github.com/sedwards2009/extraterm/ was verified as official when first introduced to the cask
  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/extraterm-#{version}-darwin-x64.zip"
  appcast "https://github.com/sedwards2009/extraterm/releases.atom"
  name "extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  app "extraterm-#{version}-darwin-x64/extraterm.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
