cask "foobar2000" do
  # NOTE: "2000" is not a version number, but an intrinsic part of the product name
  version "2.6.4"
  sha256 "e7f9208e462bad6554da8e1e13c9f9a615ab3821a4efa6bdf398340f1699d9ff"

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
