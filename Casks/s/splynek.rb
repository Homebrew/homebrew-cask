# typed: strict
# frozen_string_literal: true

cask "splynek" do
  version "1.5.3"
  sha256 "4fe61bab5ee2eb847d789c7f8b2245bf6b180936ec231241284f20b968c0e6cb"

  url "https://github.com/Splynek/splynek/releases/download/v#{version}/Splynek-#{version}.dmg",
      verified: "github.com/Splynek/"
  name "Splynek"
  desc "Multi-interface download aggregator with BitTorrent v2"
  homepage "https://splynek.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Splynek.app"

  zap trash: [
    "~/Library/Application Support/Splynek",
    "~/Library/HTTPStorages/app.splynek.Splynek",
    "~/Library/Preferences/app.splynek.Splynek.plist",
  ]
end
