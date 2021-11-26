cask "mana-security" do
  version "2.4.0"
  sha256 :no_check

  url "https://download.manasecurity.com/"
  name "Mana Security"
  desc "Vulnerability Management for individuals"
  homepage "https://www.manasecurity.com/"

  livecheck do
    url "https://download.manasecurity.com/"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Mana Security.app"
end
