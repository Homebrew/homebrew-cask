cask "datovka" do
  version "4.17.0"
  sha256 "dec3461bafef0af8de7c2045f522119021f31adebfcbd28d5bbcab03127408a7"

  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg",
      verified: "secure.nic.cz/files/datove_schranky/"
  name "Datovka"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    strategy :page_match
    regex(%r{href=.*?/datovka-(\d+(?:\.\d+)*)-64bit-macos10\.12\.dmg}i)
  end

  app "datovka.app"
end
