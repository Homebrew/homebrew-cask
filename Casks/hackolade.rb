cask "hackolade" do
  version "6.2.2"
  sha256 "95f1224a0d73d5f068605e8966630332ace7172e3d03dae5978a792f89fa7486"

  url "https://s3-eu-west-1.amazonaws.com/hackolade/previous/v#{version}/Hackolade-mac-setup-signed.pkg",
      verified: "s3-eu-west-1.amazonaws.com/hackolade/"
  name "Hackolade"
  desc "Data Modeling for NoSQL databases, storage formats, REST APIs, and JSON in RDBMS"
  homepage "https://hackolade.com/"

  livecheck do
    url "https://hackolade.com/download.html"
    regex(/Current\sversion:\sv?(\d+(?:\.\d+)+)/i)
  end

  pkg "Hackolade-mac-setup-signed.pkg"

  uninstall pkgutil: "com.hackolade.pkg.Hackolade"

  zap trash: [
    "~/Library/Application Support/Hackolade",
    "~/Library/Preferences/com.electron.hackolade.plist",
    "~/Library/Saved Application State/com.electron.hackolade.savedState",
  ]
end
