cask "ppsspp-emulator" do
  version "1.20"
  sha256 "d32009facb49f372358bb52a0079e08cff32ac2ef3258eeeb9a964c840772ce4"

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
