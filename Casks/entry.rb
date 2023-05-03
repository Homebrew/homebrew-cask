cask "entry" do
  version "2.1.3"
  sha256 "7193585548b619d882d1d7ceeff48e4ff0e1e20f2625aa6ba86084197a8a5e47"

  url "https://playentry.org/uploads/data/installers/Entry-#{version}.pkg"
  name "entry"
  desc "Creative platform using software and coding"
  homepage "https://playentry.org/"

  livecheck do
    url "https://playentry.org/download/"
    regex(%r{href=.*?/Entry[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "Entry-#{version}.pkg"

  uninstall pkgutil: [
    "org.playentry.entry.*",
    "org.playentry.entry.pkg",
  ]

  zap trash: [
    "~/Library/Application Support/Entry",
    "~/Library/Application Support/entry-hw",
    "~/Library/Preferences/org.playentry.entry.plist",
    "~/Library/Saved Application State/org.playentry.entry.savedState",
  ]
end
