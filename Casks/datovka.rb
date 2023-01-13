cask "datovka" do
  version "4.21.1"
  sha256 "7a2aa1aaca8d8d4daff0cfbb011a172df8e244207e9b6f6253d08ef8d275371f"

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
