cask "foobar2000" do
  # NOTE: "2000" is not a version number, but an intrinsic part of the product name
  version "2.24.1"
  sha256 "b0d6d6a9347d45e5b3e1d6e34e9b1b58cd0041b03d8f37771d18566cc74a6d7d"

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
