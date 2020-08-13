cask "canary" do
  version "2.10,432"
  sha256 "0fb6de1a53b6d1180a0a62c3a3e105106823dc8def04a12d0c0fa8549fc605a2"

  # rink.hockeyapp.net/api/ was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050/app_versions/#{version.after_comma}?format=zip"
  appcast "https://rink.hockeyapp.net/api/2/apps/b36ac4a380ea4907940c2054f6163050"
  name "Canary"
  homepage "https://canarymail.io/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Canary.app"

  zap trash: [
    "~/Library/Application Scripts/Sanghani.Canary",
    "~/Library/Containers/Sanghani.Canary",
  ]
end
