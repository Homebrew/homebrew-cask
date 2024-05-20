cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.23.8"
  sha256 arm:   "63914fffd0eda78f0dac09dd24f3b50a6f1bb422b349d992be898cad7e183559",
         intel: "d62e6745c0cf2156778a101c554bd08df2618ccbd869d97d3709e71fe1c9dcbd"

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
