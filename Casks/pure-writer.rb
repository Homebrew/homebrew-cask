cask "pure-writer" do
  version "1.4.0"
  sha256 "5b89db4b166123fc997796e9a12e50d9dd53ab357ff8f71e488e29ea9a9969c0"

  url "https://github.com/PureWriter/desktop/releases/download/#{version}/PureWriter-#{version}-macOS.dmg",
      verified: "github.com/PureWriter/desktop/"
  name "Pure Writer Desktop"
  desc "Desktop version of the Android app"
  homepage "https://writer.drakeet.com/desktop"

  pkg "PureWriter-#{version}.pkg"

  uninstall pkgutil: "com.drakeet.purewriter"

  zap trash: "~/Library/Preferences/com.drakeet.purewriter.plist"
end
