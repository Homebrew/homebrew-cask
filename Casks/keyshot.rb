cask "keyshot" do
  version "10.0.198"
  sha256 "a909471657083bdeba227200845e5a61644c35f43ccc2aef2cb4b9f37fdff8b0"

  url "https://download.keyshot.com/keyshot#{version.major}/keyshot_mac64_#{version}.pkg"
  name "KeyShot"
  homepage "https://www.keyshot.com/"

  depends_on macos: ">= :sierra"

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*",
            delete:  "/Applications/KeyShot#{version.major}.app"
end
