cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.24.0"
  sha256 arm:   "349ee08efe6d1937b3c7532b023ee411141e37b63070460474c33b34f0b0c6ed",
         intel: "8b667dec37d9acc7697133ceb35dbaab0d0f4493529929ec8faf1c027e0368b6"

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
