cask "entry" do
  version "2.1.3"
  sha256 "7193585548b619d882d1d7ceeff48e4ff0e1e20f2625aa6ba86084197a8a5e47"

  url "https://playentry.org/uploads/data/installers/Entry-#{version}.pkg"
  name "entry"
  desc "Creative platform using software and coding"
  homepage "https://playentry.org/"

  livecheck do
    strategy :extract_plist
  end

  pkg "Entry-#{version}.pkg"

  uninstall pkgutil: [
    "org.playentry.entry.*",
    "org.playentry.entry.pkg",
  ]
end
