cask "datovka" do
  arch arm: "arm64-macos13.3", intel: "64bit-macos10.12"

  version "4.30.2"
  sha256 arm:   "a1a5987075351a5cd42349c3cf4f656822f215d26dc0008108eedaa4bb0c8ae9",
         intel: "d5908285c10e7b27db5b05ce78b751d2d871d6125c824bf161ce62c3f598e33b"

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
