cask "ppsspp" do
  version "1.14.2"
  sha256 "8a6a66151e54d81a427d47678d375eb9c8ebe788b35ac920eba3f2f19856ca71"

  url "https://github.com/hrydgard/ppsspp/releases/download/v#{version}/PPSSPPSDL-macOS-v#{version}.zip",
      verified: "github.com/hrydgard/ppsspp/"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"
end
