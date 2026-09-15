cask "fbreader" do
  os macos: "macos", linux: "linux"

  on_macos do
    version "2.1.5"
    sha256 "27c05006a1b16be5219fec9aeb364d4470ffee665ea5a9d185748801d8782b73"

    url "https://fbreader.org/static/packages/#{os}/FBReader-#{version}.dmg"

    depends_on macos: :monterey

    pkg "FBReader.pkg"

    uninstall pkgutil: "com.fbreader"

    zap trash: [
      "~/.FBReader",
      "~/Library/Application Scripts/com.fbreader",
      "~/Library/Containers/com.fbreader",
    ]
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    version "2.1.4"
    sha256 arm64_linux:  "2cf80dc3494c692ff8ecee908570e1186b0bca30301f47512efa75b98fbffcfe",
           x86_64_linux: "de4a5044f566a04b4c594ff043c137d7bdd99e951e41a4512e814d90f6978571"

    url "https://fbreader.org/static/packages/#{os}/FBReader_Book_Reader-#{arch}-#{version}.AppImage"

    app_image "FBReader_Book_Reader-#{arch}-#{version}.AppImage", target: "FBReader.AppImage"

    zap trash: "~/.config/FBReader.ORG Limited"
  end

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
