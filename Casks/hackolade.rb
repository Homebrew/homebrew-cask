cask "hackolade" do
  version "6.1.3"
  sha256 "f8185ff5e457af5aae46a0c727d34eaa171de8067948eb13d45ff346f9a3799d"

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
