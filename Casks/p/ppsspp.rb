cask "ppsspp" do
  version "1.16.1"
  sha256 "72376913a32370ec7eb358040e1e7f950557f7ddb9f98cd9e3705e778a3807bc"

  url "https://github.com/hrydgard/ppsspp/releases/download/v#{version}/PPSSPPSDL-macOS-v#{version}.zip",
      verified: "github.com/hrydgard/ppsspp/"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"

  zap trash: "~/.config/ppsspp"
end
