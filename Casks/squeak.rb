cask "squeak" do
  version "5.3,19459"
  sha256 "429c05408d7c874a2be9c7a41ebd2ec42596e5389a00e4cf4e04ee6f2432d436"

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

  app "Squeak#{version.before_comma}-#{version.after_comma}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.before_comma}.64.All-in-One.savedState"
end
