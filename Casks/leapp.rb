cask "leapp" do
  version "0.7.3"
  sha256 "eff8a4e372491bf50a2a06ec7a6c7970528770eb651f1966c030056d04f742fb"

  # URL is different for 'latest' release and previous releases
  url do
    require "net/http"
    latest_url = "https://asset.noovolari.com/latest/Leapp-#{version}-mac.zip"
    default_url = "https://asset.noovolari.com/#{version}/Leapp-#{version}-mac.zip"
    url = URI.parse(default_url)
    req = Net::HTTP.new(url.host, url.port)
    req.use_ssl = true
    res = req.request_head(url.path)
    res.code == "404" || res.code == "403" ? latest_url : default_url
  end

  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  container nested: "temp/Leapp-#{version}.dmg"

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
