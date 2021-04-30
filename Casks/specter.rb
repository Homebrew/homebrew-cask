cask "specter" do
  version "1.3.1"
  sha256 "4307f0fcd4c74c2ef83be05a882098d435e806af24d6e8dbb4de05a0b6c18b49"

  url "https://github.com/cryptoadvance/specter-desktop/releases/download/v#{version}/SpecterDesktop-v#{version}.dmg", verified: "github.com/cryptoadvance/specter-desktop/"
  name "Specter"
  desc "Desktop GUI for Bitcoin Core optimised to work with hardware wallets"
  homepage "https://specter.solutions/"

  livecheck do
    url "https://github.com/cryptoadvance/specter-desktop/"
    strategy :git
  end

  app "Specter.app"
end
