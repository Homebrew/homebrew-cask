cask "foobar2000" do
  version "2.2.18"
  sha256 "67ad3d98d93c569d2e6fb171c5d8726c48a22dcbc6979f960c1f3ffbaf7f1f44"

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
