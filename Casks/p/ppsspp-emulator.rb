cask "ppsspp-emulator" do
  version "1.20.4"
  sha256 "bad86fc544a2c2fc5795d6a5832a8925d6db43e5789fe507f742305aaa357e17"

  url "https://www.ppsspp.org/files/#{version.dots_to_underscores}/PPSSPP_macOS.dmg"
  name "PPSSPP"
  desc "PSP emulator"
  homepage "https://www.ppsspp.org/"

  livecheck do
    url "https://www.ppsspp.org/download/"
    regex(%r{href=.*?/v?(\d+(?:[._]\d+)+)/PPSSPP[._-]macOS\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: :big_sur

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"

  zap trash: "~/.config/ppsspp"
end
