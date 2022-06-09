cask "squeak" do
  version "5.3,19481"
  sha256 "62e2f72b51745d492db0d35bf88368c4d0843c7c53e17f889518e3c12e825ee7"

  url "https://files.squeak.org/#{version.csv.first}/Squeak#{version.csv.first}-#{version.csv.second}-64bit/Squeak#{version.csv.first}-#{version.csv.second}-64bit-All-in-One.zip"
  name "Squeak"
  homepage "https://squeak.org/"

  livecheck do
    url "https://squeak.org/downloads/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Squeak(\d+(?:\.\d+)*)-(\d+)-64bit-All-in-One\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Squeak#{version.csv.first}-#{version.csv.second}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.csv.first}.64.All-in-One.savedState"
end
