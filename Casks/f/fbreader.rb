cask "fbreader" do
  version "2.1.4"
  sha256 "152507069092dba7983b5f9a70d1b8d77ba500da06c03086c51e66648d5bb530"

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
