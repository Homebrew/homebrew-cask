cask "studiolinkstandalone" do
  version "21.05.0"

  on_mojave :or_older do
    sha256 "d09e0b5a27c6a2dbdf206a6f44e966ddb58a8044f2d9ce8895084d5a26a51d88"

    url "https://download.studio.link/releases/v#{version}-stable/macos_x86_64/studio-link-standalone-v#{version}-stable.zip",
        verified: "download.studio.link/"
  end
  on_catalina :or_newer do
    sha256 "72eda324f0084c820b621b849b302812dfb5fd97375f7805614848cbc2bab688"

    url "https://download.studio.link/releases/v#{version}-stable/macos_x86_64/signed/studio-link-standalone-v#{version}-stable.zip",
        verified: "download.studio.link/"
  end

  name "Studio Link Standalone"
  desc "SIP application to create high quality Audio over IP (AoIP) connections"
  homepage "https://studio-link.de/"

  livecheck do
    url "https://gitlab.com/studio.link/app.git"
    regex(/^v?(\d+(?:\.\d+)*)[._-]stable$/i)
  end

  app "StudioLinkStandalone.app"
end
