cask "datovka" do
  version "4.19.0"
  sha256 "3ed2b6a61b8782524ac7ac3adc1d44dcee317181e2743dc46f597a3174e77f96"

  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg",
      verified: "secure.nic.cz/files/datove_schranky/"
  name "Datovka"
  desc "Access and store data messages in a local database"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    strategy :page_match
    regex(%r{href=.*?/datovka-(\d+(?:\.\d+)+)-64bit-macos10\.12\.dmg}i)
  end

  app "datovka.app"
end
