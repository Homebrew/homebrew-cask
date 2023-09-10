cask "fbreader" do
  version "2.0.4"
  sha256 "6bfc5466a25a301e35f58947822cec324c50c97f7eba48d7e8d08afc3baf7825"

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
