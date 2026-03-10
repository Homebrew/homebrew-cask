cask "ppsspp-emulator" do
  version "1.20.2"
  sha256 "efc337a0d3575184f8b29d757ecc6a204456349cbefe2b3c5a70616af8630837"

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
