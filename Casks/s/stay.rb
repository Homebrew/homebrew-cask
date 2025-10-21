cask "stay" do
  version "1.5.1"
  sha256 "f6a1a3a935ac237381360f463080bf9043676907fc7ec835eb39914b4440582d"

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.dmg"
  name "Stay"
  desc "Windows manager"
  homepage "https://cordlessdog.com/stay/"

  livecheck do
    url "https://cordlessdog.com/stay/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Stay.app"

  zap trash: [
    "~/Library/Application Support/com.cordlessdog.Stay",
    "~/Library/Application Support/Stay",
    "~/Library/Preferences/com.cordlessdog.Stay.plist",
  ]
end
