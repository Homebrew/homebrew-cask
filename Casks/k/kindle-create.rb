cask "kindle-create" do
  version "1.108"
  sha256 :no_check

  url "https://d2bzeorukaqrvt.cloudfront.net/KindleCreateInstaller.pkg",
      verified: "d2bzeorukaqrvt.cloudfront.net/"
  name "Kindle Create"
  desc "Creating beautiful books has never been easier"
  homepage "https://www.amazon.com/Kindle-Create/b?node=18292298011"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  pkg "KindleCreateInstaller.pkg"

  uninstall pkgutil: "com.amazon.kc"

  zap trash: "~/Library/Saved Application State/com.amazon.kc.savedState"

  caveats do
    requires_rosetta
  end
end
