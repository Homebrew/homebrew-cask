cask "ppsspp" do
  version "1.16.2"
  sha256 "4d02cea67bda8275bddc7af1d3d4550e28db7e298a1f9654c871f968175b46ad"

  url "https://github.com/hrydgard/ppsspp/releases/download/v#{version}/PPSSPPSDL-macOS-v#{version}.zip",
      verified: "github.com/hrydgard/ppsspp/"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"

  zap trash: "~/.config/ppsspp"
end
