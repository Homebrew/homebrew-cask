cask "datovka" do
  version "4.15.6"
  sha256 "1574954d40b4910c992343bc320861717037c1114ebd63254217fa5f07663710"

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
