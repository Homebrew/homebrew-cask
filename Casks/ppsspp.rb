cask "ppsspp" do
  version "1.12.3"
  sha256 "31059cb7c845622bcfb6686d7131d6a39f101c82d4274b0b16fe20efbf9050f3"

  url "https://github.com/hrydgard/ppsspp/releases/download/v#{version}/PPSSPPSDL-macOS-v#{version}.zip",
      verified: "github.com/hrydgard/ppsspp/"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"
end
