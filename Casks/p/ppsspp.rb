cask "ppsspp" do
  version "1.16.3"
  sha256 "fdf86c72bd454a38c9bb43efe28d78878698e050797b27e5a46eadb16f87b52b"

  url "https://github.com/hrydgard/ppsspp/releases/download/v#{version}/PPSSPPSDL-macOS-v#{version}.zip",
      verified: "github.com/hrydgard/ppsspp/"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"

  zap trash: "~/.config/ppsspp"
end
