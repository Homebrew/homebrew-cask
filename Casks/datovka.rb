cask "datovka" do
  version "4.21.0"
  sha256 "25eddc45e1257a0cafbfff8b89a69dcf8f2da6193ca2a5e2f44612d4699d475f"

  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-macos10.12.dmg",
      verified: "secure.nic.cz/files/datove_schranky/"
  name "Datovka"
  desc "Access and store data messages in a local database"
  homepage "https://www.datovka.cz/"

  livecheck do
    url "https://www.datovka.cz/cs/pages/instalace.html"
    regex(%r{href=.*?/datovka-(\d+(?:\.\d+)+)-64bit-macos10\.12\.dmg}i)
  end

  app "datovka.app"

  zap trash: "~/Library/Saved Application State/cz.nic.datovka.savedState"
end
