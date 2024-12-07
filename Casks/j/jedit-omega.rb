cask "jedit-omega" do
  on_el_capitan :or_older do
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  end
  on_sierra do
    version "2.48"
    sha256 "fbcebb742f060e4941d901d2e6b9fcd79e575828cafc38f7808ead048a3451ce"
  end
  on_high_sierra :or_newer do
    version "3.08"
    sha256 "b26e89224db8f3fe807c8068fbf9607e92a103b2f287143d778df1124f1a78d8"
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
