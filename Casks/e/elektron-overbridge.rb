cask "elektron-overbridge" do
  version "2.25.7"
  sha256 "e205f7cabc1908fc52347449f630181c0a012b69cb2834bbec966a3cad13cbe6"

  url "https://elektron-software.s3.eu-west-1.amazonaws.com/overbridge/Elektron_Overbridge_#{version}.dmg"
  name "Overbridge"
  desc "Integrate Elektron hardware into music software"
  homepage "https://www.elektron.se/overbridge"

  # The upstream download page links to the latest dmg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://www.elektron.se/support-downloads/overbridge
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: :big_sur

  pkg "Elektron Overbridge Installer #{version}.pkg"

  uninstall launchctl: [
              "asp.se.elektron.overbridge.coreaudio2",
              "se.elektron.overbridge.engine",
            ],
            quit:      "se.elektron.OverbridgeEngine",
            pkgutil:   "se.elektron.overbridge.*",
            delete:    "/Applications/Elektron"

  zap trash: [
    "~/Library/Application Support/Elektron Overbridge",
    "~/Library/Logs/Elektron Overbridge",
    "~/Library/Preferences/se.elektron.OverbridgeEngine.plist",
  ]
end
