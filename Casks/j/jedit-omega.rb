cask "jedit-omega" do
  version "3.12"
  sha256 "2dba43a17c33c58fec0a401ade3331cb9459fdafe2ba65a45f4afba3b2eefc4a"

  url "https://artman21.site/JeditOmega#{version.no_dots}.pkg",
      verified: "artman21.site/"
  name "Jedit Ω"
  desc "Text editor"
  homepage "https://www.artman21.com/en/sparkle/jeditomega.html"

  livecheck do
    url "https://www.artman21.com/en/sparkle/jedit-download.html"
    regex(/Rev[._-](\d+(?:\.\d+)+)/i)
  end

  pkg "JeditOmega#{version.no_dots}.pkg"

  uninstall quit:    "jp.co.artman21.JeditOmega",
            pkgutil: "jp.co.artman21.JeditOmega"

  zap trash: [
    "~/Library/Application Support/JeditOmega",
    "~/Library/Caches/jp.co.artman21.JeditOmega",
    "~/Library/HTTPStorages/jp.co.artman21.JeditOmega",
    "~/Library/JeditOmega",
    "~/Library/Preferences/jp.co.artman21.JeditOmega.plist",
    "~/Library/Saved Application State/jp.co.artman21.JeditOmega.savedState",
  ]
end
