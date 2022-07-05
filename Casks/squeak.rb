cask "squeak" do
  version "6.0,22101"
  sha256 "3351329c12ebe541ac2600c26014a4ff1201a8a9d028fdc2cf4d7fe5e4c60808"

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
