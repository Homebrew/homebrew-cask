cask "airmessage" do
  arch = Hardware::CPU.intel? ? "intel" : "applesilicon"
  version "3.4.1"

  if Hardware::CPU.intel?
    sha256 "a5e92decb22cc34aa136408d3dbe42b5af89ddc4b13cd59be230bea1e7386456"
  else
    sha256 "02e3b25b6918e1cbe0878f795d526c693be0ad3e80fba9bbeb7d8317911483af"
  end

  url "https://github.com/airmessage/airmessage-server/releases/download/rel-#{version}/server-#{arch}-v#{version}.zip",
      verified: "github.com/airmessage"
  name "AirMessage"
  desc "Relay server for iMessage"
  homepage "https://airmessage.org/"

  livecheck do
    url :url
    strategy :git
  end

  app "AirMessage.app"

  uninstall quit: "me.tagavari.airmessageserver"

  zap trash: [
    "~/Library/Application Support/AirMessage",
    "~/Library/Caches/me.tagavari.airmessageserver",
    "~/Library/HTTPStorages/me.tagavari.airmessageserver.binarycookies",
    "~/Library/Preferences/me.tagavari.airmessageserver.plist",
    "~/Library/WebKit/Databases/___IndexedDB/me.tagavari.airmessageserver",
  ]
end
