cask "extraterm" do
  version "0.53.1"
  sha256 "02e99ea217396780b4ac522b7b9616d82699c7a4781d81934fb678c511324796"

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
