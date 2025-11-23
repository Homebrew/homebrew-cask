cask "itermbrowserplugin" do
  version "1.0"
  sha256 "6d41bd32fd1022cf935d3fdf92bc530f90c4d17666b981137efdfcfe42128fbd"

  url "https://iterm2.com/downloads/browser-plugin/iTermBrowserPlugin-#{version}.zip"
  name "iTerm2 Browser Plugin"
  desc "Enables an integrated web browser in iTerm2"
  homepage "https://iterm2.com/browser-plugin.html"

  livecheck do
    url :homepage
    regex(%r{href=.*?/iTermBrowserPlugin[._-](\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :monterey"

  app "iTermBrowserPlugin.app"

  # No zap stanza required
end
