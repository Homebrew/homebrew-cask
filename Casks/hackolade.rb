cask "hackolade" do
  version :latest
  sha256 :no_check

  url "https://s3-eu-west-1.amazonaws.com/hackolade/current/Hackolade-mac-setup-signed.pkg",
      verified: "https://s3-eu-west-1.amazonaws.com/hackolade/"
  name "Hackolade"
  desc "Data Modeling for NoSQL databases, storage formats, REST APIs, and JSON in RDBMS"
  homepage "https://hackolade.com/"

  depends_on macos: ">= :yosemite"

  pkg "Hackolade-mac-setup-signed.pkg"

  uninstall pkgutil: "com.hackolade.pkg.Hackolade",
            delete:  "/Applications/Hackolade.app"

  zap trash: [
    "~/Library/Application Support/Hackolade",
    "~/Library/Preferences/com.electron.hackolade.plist",
    "~/Library/Saved Application State/com.electron.hackolade.savedState",
  ]
end
