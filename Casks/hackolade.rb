cask "hackolade" do
  arch arm: "ARM64", intel: ""

  version "6.4.1"

  on_intel do
    sha256 "df11bee9e746cf00c57bebdeba016c9dc660fee7bcd56ae4d68a9d8ee61d0210"
  end
  on_arm do
    sha256 "cb8a87760e10e3e38777a59c68305b5be2ff453a529080eb95372f4b17fcf08b"
  end

  url "https://s3-eu-west-1.amazonaws.com/hackolade/previous/v#{version}/Hackolade-mac#{arch}-setup-signed.pkg",
      verified: "s3-eu-west-1.amazonaws.com/hackolade/"
  name "Hackolade"
  desc "Data Modeling for NoSQL databases, storage formats, REST APIs, and JSON in RDBMS"
  homepage "https://hackolade.com/"

  livecheck do
    url "https://hackolade.com/download.html"
    regex(/Current\sversion:\sv?(\d+(?:\.\d+)+)/i)
  end

  pkg "Hackolade-mac#{arch}-setup-signed.pkg"

  uninstall pkgutil: "com.hackolade.pkg.Hackolade"

  zap trash: [
    "~/Library/Application Support/Hackolade",
    "~/Library/Preferences/com.electron.hackolade.plist",
    "~/Library/Saved Application State/com.electron.hackolade.savedState",
  ]
end
