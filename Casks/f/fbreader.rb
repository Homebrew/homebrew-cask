cask "fbreader" do
  version "2.1"
  sha256 "a1614bc755e2cc189c8548a0a1025ad8c503a0051cc1b7cc508037ceee18b501"

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
