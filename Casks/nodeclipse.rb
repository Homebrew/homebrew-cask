cask "nodeclipse" do
  version "4.5.0"
  sha256 :no_check

  # sourceforge.net/nodeclipse/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/nodeclipse/Enide-2015/7/Enide-2015-7-macosx-x64-20150706.zip"
  appcast "https://sourceforge.net/projects/nodeclipse/rss"
  name "Nodeclipse"
  homepage "https://nodeclipse.github.io/"

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/8183
  app "Eclipse.app", target: "Nodeclipse.app"
end
