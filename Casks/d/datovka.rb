cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.30.1"
  sha256 arm:   "226e26ce557548bb4a86d3c904cc0f6f199ebb8384e67e40bfea6dab75502039",
         intel: "376d76c01a10d5d9172a3abe2c999a008aa6ac11b1093cc596bdef7894d49b65"

  url "https://datovka.nic.cz/#{version}/datovka-#{version}-#{arch}.dmg"
  name "Datovka"
  desc "Access and store data messages in a local database"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    regex(%r{href=.*?/datovka[._-](\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on :macos

  app "datovka.app"

  uninstall quit: "cz.nic.datovka"

  zap trash: "~/Library/Saved Application State/cz.nic.datovka.savedState"
end
