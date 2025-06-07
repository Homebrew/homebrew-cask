cask "ppsspp" do
  version "1.19"
  sha256 "411bfe3a09242295909f35d44eb6611c8d767bca8b6f2c4644cf631686bacf88"

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
