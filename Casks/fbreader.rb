cask "fbreader" do
  version "1.999.16"
  sha256 "4f487bc18f8171e5b6a7af915834acb3d177b53640aa243a5f468ce89ac95513"

  url "https://fbreader.org/static/packages/macos/FBReader-#{version}.dmg"
  name "FBReader"
  desc "Book reader"
  homepage "https://fbreader.org/macos/"

  livecheck do
    url :homepage
    regex(/>Current\s*version:.*?\(v?(\d+(?:\.\d+)+)\).*?</i)
  end

  pkg "FBReader.pkg"

  uninstall pkgutil: "com.fbreader"

  zap trash: "~/.FBReader"
end
