cask "decrediton" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.1.7"
  sha256 arm:          "bf27ebb27fcbb2f4a7888d29ae0c725490a3c76bb894f65b78b51c0e95027558",
         intel:        "f125fbbbf194f64d4c494110939cca50d6318c9a4cfb46809f7659c47a597d08",
         x86_64_linux: "8eef6cbb291b2a8b6604c582ea3a0b40e95096b0199b0831007211555cd5e06d"

  on_macos do
    app "Decrediton.app"

    zap trash: [
      "~/Library/Application Support/decrediton",
      "~/Library/Preferences/com.Electron.Decrediton.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "decrediton-linux-amd64-v#{version}.AppImage", target: "Decrediton.AppImage"
  end

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{os}-#{arch}-v#{version}.#{url_end}"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"
end
