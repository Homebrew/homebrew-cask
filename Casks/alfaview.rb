cask "alfaview" do
  version "8.15.0"
  sha256 "0093e1f76f50b075a005c2cbb15ca78b5c69fb3e1b37d5d46e08fad2b7e70d60"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name "Alfaview"
  desc "Audio video conferencing"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    strategy :page_match
    regex(/alfaview-mac-production-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
