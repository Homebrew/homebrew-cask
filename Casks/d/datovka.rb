cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.29.0"
  sha256 arm:   "54072c3c352b3612cf924480463e016d1544ae00994141cd04d22613cbcf1297",
         intel: "341586c182bddf2604a7adbb6d6d19f380f03a672a75552019f5ecb1eb17e202"

  url "https://datovka.nic.cz/#{version}/datovka-#{version}-#{arch}.dmg",
      verified: "datovka.nic.cz/"
  name "Datovka"
  desc "Access and store data messages in a local database"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    regex(%r{href=.*?/datovka[._-](\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "datovka.app"

  zap trash: "~/Library/Saved Application State/cz.nic.datovka.savedState"
end
