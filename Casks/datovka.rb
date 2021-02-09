cask "datovka" do
  version "4.16.0"
  sha256 "bc9693a59dd0430253a9a28fbb59b191afecb4eb2aba9ccee3c06e408a1d0901"

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
