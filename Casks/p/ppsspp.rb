cask "ppsspp" do
  version "1.19.2"
  sha256 "3859b6c3f77efa6beac0b8677929584cbbbc81a90e3a6c7bb6d6fc9b70f89c1f"

  url "https://www.ppsspp.org/files/#{version.dots_to_underscores}/PPSSPP_macOS.dmg"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  livecheck do
    url "https://builds.ppsspp.org/meta/status.json"
    strategy :json do |json|
      json.dig("latest", "tag")&.tr("v", "")
    end
  end

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"

  zap trash: "~/.config/ppsspp"
end
