cask "pulse-ticker" do
  version "0.16.3"
  sha256 "9d9ef201e77a11c76d70db1e18303975623eb112c61ef5419c743f52934ef88b"

  url "https://www.pulseticker.app/download?version=#{version}"
  name "Pulse"
  desc "Menu bar tracker for stocks, crypto and prediction markets"
  homepage "https://www.pulseticker.app/"

  livecheck do
    url "https://www.pulseticker.app/download"
    regex(/[?&]version=v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pulse.app"

  zap trash: [
    "~/Library/Caches/app.pulse.mac",
    "~/Library/Caches/Pulse",
    "~/Library/Containers/app.pulse.mac",
    "~/Library/HTTPStorages/app.pulse.mac",
    "~/Library/Preferences/app.pulse.mac.plist",
  ]
end
