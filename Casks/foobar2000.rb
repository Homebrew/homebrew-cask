cask "foobar2000" do
  version "2.2.20"
  sha256 "94acad655fe8d0af76c902f1974915a0cdb94cdedc626162eaad9ceafa2c9986"

  url "https://www.foobar2000.org/files/foobar2000-v#{version}.dmg"
  name "foobar2000"
  desc "Audio player"
  homepage "https://www.foobar2000.org/mac"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/foobar2000-v(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "foobar2000.app"

  zap trash: [
    "~/Library/foobar2000",
    "~/Library/Preferences/com.foobar2000.mac.plist",
  ]
end
