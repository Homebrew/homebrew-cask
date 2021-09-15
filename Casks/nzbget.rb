cask "nzbget" do
  version "21.1"
  sha256 "f8d7fe6e0b8e540a5adc02eda20314f10093f58ca4a85925f607e45e9f02c5ec"

  url "https://github.com/nzbget/nzbget/releases/download/v#{version}/nzbget-#{version}-bin-macos.zip",
      verified: "github.com/nzbget/nzbget/"
  name "NZBGet"
  desc "Usenet downloader focusing on efficiency"
  homepage "https://nzbget.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NZBGet.app"

  zap trash: [
    "~/Library/Application Support/NZBGet",
    "~/Library/Preferences/net.sourceforge.nzbget.plist",
  ]
end
