cask "ppsspp-emulator" do
  version "1.19.3"
  sha256 "547426b2871e5472596c185376a3996f9748b12b8af588bb1901ba6d2bd9bfe2"

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
