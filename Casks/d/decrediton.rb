cask "decrediton" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.1.5"

  on_macos do
    sha256 arm:   "aeb54e1048cc714742939d83deb14ceea1b3bad603e01712d1799088408124b4",
           intel: "5b0f76e719031fdc3d6f9a6988b44c0303ffacf41c9fd7da5769969b63f0ca63"

    depends_on macos: :big_sur

    app "Decrediton.app"

    zap trash: [
      "~/Library/Application Support/decrediton",
      "~/Library/Preferences/com.Electron.Decrediton.plist",
    ]
  end
  on_linux do
    sha256 "a8ab131b4d4eae78589b0fa82219205034b0b1fb0a10acaef3b53d12e63ad3bb"

    depends_on arch: :x86_64

    app_image "decrediton-linux-amd64-v#{version}.AppImage", target: "Decrediton.AppImage"
  end

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{os}-#{arch}-v#{version}.#{url_end}"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"
end
