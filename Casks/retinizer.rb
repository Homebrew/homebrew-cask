cask "retinizer" do
  version "0.5.0"
  sha256 "34d82f6beeb934ebd73ac231c364298456374d8e52f5e3826077999507832922"

  url "https://sites.google.com/a/mikelpr.com/files/home/Retinizer#{version.no_dots}.zip",
      verified: "sites.google.com/a/mikelpr.com/"
  appcast "http://retinizer.mikelpr.com/",
          must_contain: version.no_dots
  name "Retinizer"
  homepage "http://retinizer.mikelpr.com/"

  app "Retinizer.app"

  zap trash: "~/Library/Preferences/com.mikelpr.Retinizer.plist"
end
