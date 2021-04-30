cask "squeak" do
  version "5.3,19435"
  sha256 "06c2d22064b2795c6f4a2c03feddd2ebf741aa8222676195f5ce7b9f607411bd"

  url "https://files.squeak.org/#{version.before_comma}/Squeak#{version.before_comma}-#{version.after_comma}-64bit/Squeak#{version.before_comma}-#{version.after_comma}-64bit-All-in-One.zip"
  name "Squeak"
  homepage "https://squeak.org/"

  livecheck do
    url "https://squeak.org/downloads/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Squeak(\d+(?:\.\d+)*)-(\d+)-64bit-All-in-One\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Squeak#{version.before_comma}-#{version.after_comma}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.before_comma}.64.All-in-One.savedState"
end
