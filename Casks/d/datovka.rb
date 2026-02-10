cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.28.0"
  sha256 arm:   "8bb7e606615f4d153c32a55c34c2d1b48a817dacd86a677874fcd573f335a677",
         intel: "f5a626f7cb9b4e7056d4721663131fabda08bbdd8af9f8bf549d0fc767ecea50"

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
