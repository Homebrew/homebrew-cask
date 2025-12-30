cask "foobar2000" do
  # NOTE: "2000" is not a version number, but an intrinsic part of the product name
  version "2.25.4"
  sha256 "176a3cb8eb05ffa225bf517770e8828f508b8bae5dc7f48807bf756ce3d44e7a"

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
