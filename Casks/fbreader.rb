cask "fbreader" do
  version "1.999.16"
  sha256 "a2c1bdb5b39452cbd1d241639c34d8f4384363e41a34ae90539e839b1423a9c9"

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
