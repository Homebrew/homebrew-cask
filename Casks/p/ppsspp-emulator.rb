cask "ppsspp-emulator" do
  version "1.20.3"
  sha256 "141bab69f5b6894e4bedaf90905c87fac7dd887106297c940b2984d2a4523a87"

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

  depends_on macos: ">= :big_sur"

  app "PPSSPPSDL.app"

  uninstall quit: "org.ppsspp.ppsspp"

  zap trash: "~/.config/ppsspp"
end
