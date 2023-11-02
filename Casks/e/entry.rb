cask "entry" do
  version "2.1.8"
  sha256 "bff3cad492b2264a41a34b7bce42c86cb3b497db75112c8ae1d10b5ad92adffc"

  url "https://playentry.org/uploads/data/installers/Entry-#{version}.pkg"
  name "entry"
  desc "Block-based coding platform"
  homepage "https://playentry.org/"

  livecheck do
    url "https://github.com/entrylabs/entry-offline/"
    strategy :github_latest
  end

  pkg "Entry-#{version}.pkg"

  uninstall pkgutil: "org.playentry.entry"

  zap trash: [
    "~/Library/Application Support/Entry",
    "~/Library/Application Support/entry-hw",
    "~/Library/Preferences/org.playentry.entry.plist",
    "~/Library/Saved Application State/org.playentry.entry.savedState",
  ]
end
