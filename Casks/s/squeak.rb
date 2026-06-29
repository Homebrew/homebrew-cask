cask "squeak" do
  version "6.0,22156"
  sha256 "e0ba2ed3dba3bf16c018795af1bf43dc895e8436be20c0479639b952452217cf"

  url "https://files.squeak.org/#{version.csv.first}/Squeak#{version.csv.first}-#{version.csv.second}-64bit/Squeak#{version.csv.first}-#{version.csv.second}-64bit-All-in-One.zip"
  name "Squeak"
  desc "Smalltalk programming system"
  homepage "https://squeak.org/"

  livecheck do
    url "https://squeak.org/downloads/"
    regex(%r{href=.*?/Squeak(\d+(?:\.\d+)*)-(\d+)-64bit-All-in-One\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :big_sur

  app "Squeak#{version.csv.first}-#{version.csv.second}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.csv.first}.64.All-in-One.savedState"
end
