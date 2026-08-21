cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.29.5"
  sha256 arm:   "7373c5e57fd1c21920329e1235b65188aea197a74f049d42bdbe6d5a309201be",
         intel: "62a709201022acebf0e2a6d9c0fc9fb1d91295007c4b38bb35ed64ac4fda14b8"

  url "https://datovka.nic.cz/#{version}/datovka-#{version}-#{arch}.dmg",
      verified: "datovka.nic.cz/"
  name "Datovka"
  desc "Access and store data messages in a local database"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    regex(%r{href=.*?/datovka[._-](\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: :big_sur

  app "datovka.app"

  zap trash: "~/Library/Saved Application State/cz.nic.datovka.savedState"
end
