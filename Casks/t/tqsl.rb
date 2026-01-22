cask "tqsl" do
  version "2.8.3"
  sha256 "aa0101272c64c3dc46f96920d4e798411edc3068104bf46a427d3c2164e6055b"

  url "https://www.arrl.org/tqsl/tqsl-#{version}.pkg"
  name "Trusted QSL"
  desc "Sign and upload QSO records to Logbook of The World (LoTW)"
  homepage "https://www.arrl.org/tqsl-download"

  livecheck do
    url :homepage
    regex(%r{href=.*?/tqsl[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "tqsl-#{version}.pkg"

  uninstall pkgutil: "org.arrl.tqsl"

  zap trash: [
    "~/.tqsl",
    "~/Library/Preferences/org.arrl.tqsl.plist",
    "~/Library/Preferences/tqslapp Preferences",
    "~/Library/Saved Application State/org.arrl.tqsl.savedState",
  ]
end
