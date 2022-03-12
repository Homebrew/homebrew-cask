cask "stay" do
  version "1.4,747"
  sha256 "20362f8564cf7384350f19ee39d46db675473cf82417e7b552e2cdabc363fd4b"

  url "https://cordlessdog.com/stay/versions/Stay%20#{version.csv.first}.dmg"
  name "Stay"
  desc "Windows manager"
  homepage "https://cordlessdog.com/stay/"

  livecheck do
    url "https://cordlessdog.com/stay/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Stay.app"

  zap trash: [
    "~/Library/Application Support/Stay",
    "~/Library/Application Support/com.cordlessdog.Stay",
    "~/Library/Preferences/com.cordlessdog.Stay.plist",
  ]
end
