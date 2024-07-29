cask "fbreader" do
  version "2.1.0.1"
  sha256 "4e69f4efb094cb65810fd405915fbb2ff274ad62f56aefbe664aaaa9c9a8d120"

  url "https://fbreader.org/static/packages/macos/FBReader-#{version}.dmg"
  name "FBReader"
  desc "Book reader"
  homepage "https://fbreader.org/macos/"

  livecheck do
    url "https://fbreader.org/service/look_for_updates/macos/other"
    strategy :json do |json|
      json["version"]
    end
  end

  pkg "FBReader.pkg"

  uninstall pkgutil: "com.fbreader"

  zap trash: [
    "~/.FBReader",
    "~/Library/Application Scripts/com.fbreader",
    "~/Library/Containers/com.fbreader",
  ]
end
