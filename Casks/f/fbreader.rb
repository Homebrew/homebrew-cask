cask "fbreader" do
  version "2.0.5"
  sha256 "d3a295f6cdf62b31ff7ffac9e26c65848c0eaf7e5458f69858ee54444653294d"

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
