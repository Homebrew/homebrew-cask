cask "nzbget" do
  version "21.0"
  sha256 "b21c7066330e8914f67dbfff197b9ec7c42daf61334851158460c4b71dfdeded"

  # github.com/nzbget/nzbget/ was verified as official when first introduced to the cask
  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-macos.zip"
  appcast "https://github.com/nzbget/nzbget/releases.atom"
  name "NZBGet"
  desc "Usenet downloader focusing on efficiency"
  homepage "https://nzbget.net/"

  app "NZBGet.app"

  zap trash: [
    "~/Library/Application Support/NZBGet",
    "~/Library/Preferences/net.sourceforge.nzbget.plist",
  ]
end
