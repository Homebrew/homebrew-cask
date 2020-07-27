cask "squeak" do
  version "5.3,19435"
  sha256 "06c2d22064b2795c6f4a2c03feddd2ebf741aa8222676195f5ce7b9f607411bd"

  url "https://files.squeak.org/#{version.before_comma}/Squeak#{version.before_comma}-#{version.after_comma}-64bit/Squeak#{version.before_comma}-#{version.after_comma}-64bit-All-in-One.zip"
  appcast "https://squeak.org/downloads/"
  name "Squeak"
  homepage "https://squeak.org/"

  app "Squeak#{version.before_comma}-#{version.after_comma}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.before_comma}.64.All-in-One.savedState"
end
