cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.29.4"
  sha256 arm:   "2a7c27180b286ff81abb96d34952a4632ae8bdce42135b4674c6a3946371dba4",
         intel: "a7428dfd69f5ac8fa41581b2d4164dbc0aef2585c3512a64f44ec3d500c84f2c"

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
