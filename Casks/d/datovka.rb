cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.30.0"
  sha256 arm:   "b9131452202ed530c0c6eee445037e93731c2a27abf6366e2a5e4e21ad272e2d",
         intel: "7dea1200690e7fd07485b2577537c2b8de100b7763c01b646f4813f8be65fb24"

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
