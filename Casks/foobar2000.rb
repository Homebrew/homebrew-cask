cask "foobar2000" do
  version "2.2.17"
  sha256 "b10724d95724b3a2a0b32017a1348d5c1c3386b605dd324717957761eaeed6fa"

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
