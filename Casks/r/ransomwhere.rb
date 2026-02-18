cask "ransomwhere" do
  version "2.0.0"
  sha256 "52247edb45ee0c381b3f26f52b7b26e3accdd68a9d14ddef145ae80075309f02"

  url "https://github.com/objective-see/RansomWhere/releases/download/v#{version}/RansomWhere_#{version}.zip",
      verified: "github.com/objective-see/RansomWhere/"
  name "RansomWhere"
  desc "Protect your personal files"
  homepage "https://objective-see.org/products/ransomwhere.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  installer script: {
    executable: "#{staged_path}/RansomWhere Installer.app/Contents/MacOS/RansomWhere Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/RansomWhere Installer.app/Contents/MacOS/RansomWhere Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
