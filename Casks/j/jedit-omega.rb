cask "jedit-omega" do
  version "3.11"
  sha256 "21ea1aec73ac72577b9100cc6be1b3597cd88c88db624fa498b55b66bcb2a7fb"

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
