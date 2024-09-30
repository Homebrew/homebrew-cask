cask "fbreader" do
  version "2.1.2"
  sha256 "93e5bc8493b0137b72b5dc3bf5d0dbfa823a2e43dd410919e21a70a8c860fbbc"

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
