cask "fbreader" do
  version "2.0.5"
  sha256 "d3a295f6cdf62b31ff7ffac9e26c65848c0eaf7e5458f69858ee54444653294d"

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
