cask "studiolinkstandalone" do
  version "21.03.2"

  if MacOS.version <= :mojave
    sha256 "d09e0b5a27c6a2dbdf206a6f44e966ddb58a8044f2d9ce8895084d5a26a51d88"

    url "https://download.studio.link/releases/v#{version}-stable/macos_x86_64/studio-link-standalone-v#{version}-stable.zip",
        verified: "download.studio.link/"
  else
    sha256 "feae3f82fd88af6b670d3d6ee2ab91300e86012a8470ff0b7d56a443d6cdc4c3"

    url "https://download.studio.link/releases/v#{version}-stable/macos_x86_64/signed/studio-link-standalone-v#{version}-stable.zip",
        verified: "download.studio.link/"
  end

  name "Studio Link Standalone"
  desc "SIP application to create high quality Audio over IP (AoIP) connections"
  homepage "https://studio-link.de/"

  livecheck do
    url "https://gitlab.com/studio.link/app.git"
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)[._-]stable$/i)
  end

  app "StudioLinkStandalone.app"
end
