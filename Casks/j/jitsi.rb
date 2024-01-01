cask "jitsi" do
  version "2.10.5550"
  sha256 "d902af9dde7b1fde6f76af5f97e4f27d6b853bd9d3e83b2fec5292dda787a0da"

  url "https://github.com/jitsi/jitsi/releases/download/Jitsi-#{version.major_minor}/jitsi-#{version}.dmg",
      verified: "github.com/jitsi/jitsi/"
  name "Jitsi"
  desc "Open-source video calls and chat"
  homepage "https://desktop.jitsi.org/"

  livecheck do
    url "https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml"
    strategy :sparkle do |item|
      item.url[/-(\d+(?:\.\d+)*)\.dmg/i, 1]
    end
  end

  app "Jitsi.app"

  zap trash: [
    "~/Library/Application Support/Jitsi",
    "~/Library/Caches/Jitsi",
    "~/Library/Logs/Jitsi",
    "~/Library/Preferences/org.jitsi.jitsi.plist",
  ]
end
