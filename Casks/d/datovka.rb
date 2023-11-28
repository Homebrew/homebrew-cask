cask "datovka" do
  version "4.23.0"
  sha256 "f3fd33b67718c82f00347e64310ef5c60068413c480d32718cd6ba29e46f0ec4"

  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg",
      verified: "secure.nic.cz/files/datove_schranky/"
  name "Datovka"
  desc "Access and store data messages in a local database"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    regex(%r{href=.*?/datovka-(\d+(?:\.\d+)+)-64bit-macos10\.12\.dmg}i)
  end

  app "datovka.app"

  zap trash: "~/Library/Saved Application State/cz.nic.datovka.savedState"
end
