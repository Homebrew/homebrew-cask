cask "tev" do
  on_macos do
    arch intel: "-intel"
  end
  on_linux do
    arch arm: "-arm"
  end

  version "2.13.0"
  sha256 arm:          "3289be8ae50930cd0cae73e6118229bdacec23dfc796810d333c422742dd899e",
         intel:        "b33f2a8637af32a4ad061881d87d768baa07be1547df7e6c6487381ecebd4bc1",
         arm64_linux:  "7f7a16015a3234dcf10d29015761cee311439c2290c131b0c8d9fdf7c90adf15",
         x86_64_linux: "c59fd5c933c40d6f22145fbe432936a35aea27c633cfee187853b695fb625058"

  url_end = on_system_conditional linux: ".appimage", macos: ".dmg"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}#{url_end}"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    app "tev.app"
    binary "#{appdir}/tev.app/Contents/MacOS/tev"

    zap trash: "~/Library/Preferences/org.tom94.tev.plist"
  end

  on_linux do
    app_image "tev#{arch}.appimage", target: "tev.AppImage"
  end
end
