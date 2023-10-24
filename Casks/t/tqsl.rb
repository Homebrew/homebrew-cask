cask "tqsl" do
  version "2.7.1"
  sha256 "9ca1312822e609a2ba51d5649d0fc5460749d539c8220c6715a8be7a8c8b03ee"

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
