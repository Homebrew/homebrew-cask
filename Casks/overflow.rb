cask "overflow" do
  version "3.2.1"
  sha256 "61c40e5d497a0f0e26dfb4062fbb958cbb9a0ea7895a7fcff64edca3e265f034"

  url "https://stunt.s3.amazonaws.com/overflow_#{version}.zip",
      verified: "stunt.s3.amazonaws.com/"
  appcast "https://stuntsoftware.com/PHP/sparkle/overflow#{version.major}.php"
  name "Overflow"
  desc "Visual application launcher"
  homepage "https://stuntsoftware.com/overflow/"

  depends_on macos: ">= :high_sierra"

  app "Overflow #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.stuntsoftware.Overflow#{version.major}/Data/Library/Preferences/com.stuntsoftware.Overflow#{version.major}.plist",
    "~/Library/Containers/com.stuntsoftware.Overflow#{version.major}/Data/Library/Application Support/default.realm",
  ]
end
