cask "foobar2000" do
  # NOTE: "2000" is not a version number, but an intrinsic part of the product name
  version "2.25"
  sha256 "f11754c69ff99c1590ab00590b68672e4a931d536cd4fe116ad6e6f9679c6d02"

  url "https://www.foobar2000.org/files/foobar2000-v#{version}.dmg"
  name "foobar2000"
  desc "Audio player"
  homepage "https://www.foobar2000.org/mac"

  livecheck do
    url :homepage
    regex(%r{href=.*?/foobar2000[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "foobar2000.app"

  zap trash: [
    "~/Library/foobar2000",
    "~/Library/Preferences/com.foobar2000.mac.plist",
  ]
end
