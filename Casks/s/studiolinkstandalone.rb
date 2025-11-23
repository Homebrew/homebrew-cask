cask "studiolinkstandalone" do
  version "21.07.0"
  sha256 "13e1e57eb209e451469ec8c973af4ff290306316a7e766a11d8595125abb8608"

  url "https://download.studio.link/releases/v#{version}-stable/macos_x86_64/signed/studio-link-standalone-v#{version}-stable.zip",
      verified: "download.studio.link/"
  name "Studio Link Standalone"
  desc "SIP application to create high quality Audio over IP (AoIP) connections"
  homepage "https://studio-link.de/"

  livecheck do
    url "https://doku.studio-link.de/standalone/installation-standalone.html"
    regex(%r{href=.*?/releases/v?(\d+(?:\.\d+)+)-stable/macos}i)
  end

  app "StudioLinkStandalone.app"

  zap trash: "~/Library/Saved Application State/link.studio.standalone.savedState"
end
