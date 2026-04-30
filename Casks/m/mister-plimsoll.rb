cask "mister-plimsoll" do
  version "0.6.0"
  sha256 "3a83bb2e5ca2e82c8a7329863835b90947b9271984f8344c82246065e8218328"

  url "https://www.misterplimsoll.app/downloads/MisterPlimsoll-#{version}.dmg"
  name "Mister Plimsoll"
  desc "Storage volume usage monitoring and fullness notifications"
  homepage "https://www.misterplimsoll.app/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/MisterPlimsoll[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sonoma"

  app "Mister Plimsoll.app"

  zap trash: "~/Library/Preferences/com.glennf.MisterPlimsoll.plist"
end
