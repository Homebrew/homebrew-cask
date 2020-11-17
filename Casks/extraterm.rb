cask "extraterm" do
  version "0.55.1"
  sha256 "2827b2e3ae9f880c5bbd193603fc80bb23cb1706d086735be257d0a810cc78a5"

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
