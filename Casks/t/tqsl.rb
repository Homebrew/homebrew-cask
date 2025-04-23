cask "tqsl" do
  version "2.8"
  sha256 "fc9e977b08a4c7bdab8a3b80c365fbd5756fd572a6a6071cebbfc1790e1a15e6"

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
