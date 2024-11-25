cask "foobar2000" do
  # NOTE: "2000" is not a version number, but an intrinsic part of the product name
  version "2.24"
  sha256 "81c722a07ff4385dddceb2d2f9875c02a98f502980bf209220639e9351d29e6c"

  url "https://www.foobar2000.org/files/foobar2000-v#{version}.dmg"
  name "foobar2000"
  desc "Audio player"
  homepage "https://www.foobar2000.org/mac"

  livecheck do
    url :homepage
    regex(%r{href=.*?/foobar2000[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "foobar2000.app"

  zap trash: [
    "~/Library/foobar2000",
    "~/Library/Preferences/com.foobar2000.mac.plist",
  ]
end
