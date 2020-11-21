cask "extraterm" do
  version "0.55.2"
  sha256 "607fe541e451cb60ffc2ab3a8950fb6c898ec7202d10d8a09afaf90b169a338f"

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
