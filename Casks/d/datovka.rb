cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.24.1"
  sha256 arm:   "db1578453161b74c886b46b6b9fc9f3864ed73ee1023174e890cc606cf4531b2",
         intel: "931e632a54b1c9be3d991c9f559eb07c006ab47a304372487694901d7ce9d9f2"

  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-#{arch}.dmg",
      verified: "secure.nic.cz/files/datove_schranky/"
  name "Datovka"
  desc "Access and store data messages in a local database"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    regex(%r{href=.*?/datovka[._-](\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "datovka.app"

  zap trash: "~/Library/Saved Application State/cz.nic.datovka.savedState"
end
