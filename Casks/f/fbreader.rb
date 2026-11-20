cask "fbreader" do
  os macos: "macos", linux: "linux"
  name_arch_sep = on_system_conditional linux: "_Book_Reader-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.5.2"
  sha256 arm:          "0b214645060593ec49d88a0ee3c5397c0313c84aae17f500ac6a37ff3a9e6699",
         intel:        "0b214645060593ec49d88a0ee3c5397c0313c84aae17f500ac6a37ff3a9e6699",
         arm64_linux:  "6e8d8d412a2064ca17b66658b069aca2b9af97d4fd5d75f9bbbf756f4e0794d3",
         x86_64_linux: "3bdf22ca87cde733e60ca250fcc68b67f42f5a28699d11cd0bed81efd8c3b6c0"

  on_macos do
    depends_on macos: :monterey

    pkg "FBReader-#{version}.pkg"

    uninstall pkgutil: "com.fbreader"

    zap trash: [
      "~/.FBReader",
      "~/Library/Application Scripts/com.fbreader",
      "~/Library/Containers/com.fbreader",
    ]
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    app_image "FBReader_Book_Reader-#{arch}-#{version}.AppImage", target: "FBReader.AppImage"

    zap trash: "~/.config/FBReader.ORG Limited"
  end

  url "https://fbreader.org/static/packages/#{os}/FBReader#{name_arch_sep}#{arch}-#{version}.#{url_end}"
  name "FBReader"
  desc "Book reader"
  homepage "https://fbreader.org/"

  livecheck do
    url "https://fbreader.org/service/look_for_updates/#{os}/other"
    strategy :json do |json|
      json["version"]
    end
  end
end
