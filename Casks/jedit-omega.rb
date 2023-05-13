cask "jedit-omega" do
  on_el_capitan :or_older do
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  end
  on_sierra :or_newer do
    version "3.04"
    sha256 "193daa5482275500d8c60a1dc0b8adba450aaa2890ce768cd17ea045dae808c6"
  end

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

  uninstall pkgutil: "jp.co.artman21.JeditOmega",
            quit:    "jp.co.artman21.JeditOmega"

  zap trash: [
    "~/Library/Application Support/JeditOmega",
    "~/Library/Caches/jp.co.artman21.JeditOmega",
    "~/Library/HTTPStorages/jp.co.artman21.JeditOmega",
    "~/Library/JeditOmega",
    "~/Library/Preferences/jp.co.artman21.JeditOmega.plist",
    "~/Library/Saved Application State/jp.co.artman21.JeditOmega.savedState",
  ]
end
