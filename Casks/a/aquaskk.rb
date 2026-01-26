cask "aquaskk" do
  version "4.7.3"
  sha256 "bf3300ceb8f5fd2433e244de0f43f1962073b5048f1536ef58e617f7c4785abd"

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  name "AquaSKK"
  desc "Input method without morphological analysis"
  homepage "https://github.com/codefirst/aquaskk"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: "org.codefirst.aquaskk.pkg"

  zap trash: [
    "~/Library/Application Support/AquaSKK",
    "~/Library/Preferences/jp.sourceforge.inputmethod.aquaskk.plist",
    "~/Library/Preferences/jp.sourceforge.inputmethod.aquaskk.preferences.plist",
  ]
end
