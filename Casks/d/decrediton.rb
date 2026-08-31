cask "decrediton" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.1.6"

  on_macos do
    sha256 arm:   "1d9daf9a0ec5df743b516738c7a8842cbc79724be595e4ba0f97bbfd7d5365b5",
           intel: "d0e6bd5aa874d74e2d607e52ae29c12a2f525a68ca37e7616336e0d14b33a6e6"

    depends_on macos: :big_sur

    app "Decrediton.app"

    zap trash: [
      "~/Library/Application Support/decrediton",
      "~/Library/Preferences/com.Electron.Decrediton.plist",
    ]
  end
  on_linux do
    sha256 "326efece642afca2a2ce9803d0493141e5e80096c00b68a6219fabdd79b6476f"

    depends_on arch: :x86_64

    app_image "decrediton-linux-amd64-v#{version}.AppImage", target: "Decrediton.AppImage"
  end

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{os}-#{arch}-v#{version}.#{url_end}"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"
end
