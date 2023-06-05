cask "fbreader" do
  version "2.0.1"
  sha256 "c1adadb4168db03079449bf0c4fd6531cbc8982f94fb745cae3d8e328c3a23c3"

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
