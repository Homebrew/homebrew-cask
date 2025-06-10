cask "ppsspp" do
  version "1.19.1"
  sha256 "19747f0420f573e124cc64e0f91f23118d8751e22b4d079294fe540281cbc91c"

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
