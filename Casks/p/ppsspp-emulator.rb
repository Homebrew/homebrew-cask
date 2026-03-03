cask "ppsspp-emulator" do
  version "1.20.1"
  sha256 "192a9d969b7a8d9ae763c5e1d9399fd1af53290f234529de4ec839c8dedf0452"

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
