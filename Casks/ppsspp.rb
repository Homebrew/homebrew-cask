cask "ppsspp" do
  version "1.14"
  sha256 "4ebce22aea17977cbc5cd307169e0103c2e5cc41bebd6dfa410ff4d4c2f3c1c8"

  url "https://github.com/hrydgard/ppsspp/releases/download/v#{version}/PPSSPPSDL-macOS-v#{version}.zip",
      verified: "github.com/hrydgard/ppsspp/"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"
end
