cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.29.1"
  sha256 arm:   "b13997e8cb7236323b24a839ea6f4195a8a03efc582e126aba0f932d42452edf",
         intel: "be03aee363d835835681e127e93528fad3f2f678789f9ca62616fbcfe98eb728"

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
