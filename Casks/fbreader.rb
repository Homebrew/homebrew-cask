cask "fbreader" do
  version "2.0"
  sha256 "6c32838b4e24f7b1660dfbe2cee05b24a0d6d706336e3025d5055b683ffe0387"

  url "https://fbreader.org/static/packages/macos/FBReader-#{version}.dmg"
  name "FBReader"
  desc "Book reader"
  homepage "https://fbreader.org/macos/"

  livecheck do
    url :homepage
    regex(%r{>Current\s*version:\sv?(\d+(?:\.\d+)+).*?</h}i)
  end

  pkg "FBReader.pkg"

  uninstall pkgutil: "com.fbreader"

  zap trash: "~/.FBReader"
end
