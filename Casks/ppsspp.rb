cask "ppsspp" do
  version "1.13.2"
  sha256 "6d047749b4c9566ee579e11375c6b8483fe2da95657db9a2f5f8eaeb7bef2b32"

  url "https://github.com/hrydgard/ppsspp/releases/download/v#{version}/PPSSPPSDL-macOS-v#{version}.zip",
      verified: "github.com/hrydgard/ppsspp/"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"
end
