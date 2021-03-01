cask "4peaks" do
  version "1.8"
  sha256 :no_check

  url "http://downloads.nucleobytes.com/4peaks.dmg"
  appcast "https://nucleobytes.com/4peaks/index.html"
  name "4Peaks"
  homepage "https://nucleobytes.com/4peaks/index.html"

  app "4Peaks.app"
end
