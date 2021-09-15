cask "datovka" do
  version "4.18.0"
  sha256 "62cb7909c1b191974d2890aa6dcc80cc6d869af406d3cb794230841fac7fe933"

  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg",
      verified: "secure.nic.cz/files/datove_schranky/"
  name "Datovka"
  desc "Access and store data messages in a local database"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    strategy :page_match
    regex(%r{href=.*?/datovka-(\d+(?:\.\d+)*)-64bit-macos10\.12\.dmg}i)
  end

  app "datovka.app"
end
