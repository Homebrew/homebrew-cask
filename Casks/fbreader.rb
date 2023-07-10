cask "fbreader" do
  version "2.0.2"
  sha256 "8c039a5375b06256cd59686db01f70eaa3d8dc03dba609fdda18c9e5940a36fe"

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
