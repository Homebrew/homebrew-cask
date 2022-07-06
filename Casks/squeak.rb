cask "squeak" do
  version "6.0,22104"
  sha256 "c586e4c39c380dba69e86e15b4d0c029a7406ed852f62341802f3409e2870356"

  url "https://files.squeak.org/#{version.csv.first}/Squeak#{version.csv.first}-#{version.csv.second}-64bit/Squeak#{version.csv.first}-#{version.csv.second}-64bit-All-in-One.zip"
  name "Squeak"
  desc "Smalltalk programming system"
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
