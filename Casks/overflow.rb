cask "overflow" do
  version "3.1"
  sha256 "853928dbe2482194bfbe441184ef13fe2c8dd20219398daad43ba968abea41fe"

  # stunt.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://stunt.s3.amazonaws.com/overflow#{version}.zip"
  appcast "https://stuntsoftware.com/PHP/sparkle/overflow#{version.major}.php"
  name "overflow"
  homepage "https://stuntsoftware.com/overflow/"

  depends_on macos: ">= :high_sierra"

  app "Overflow #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.stuntsoftware.Overflow3/Data/Library/Preferences/com.stuntsoftware.Overflow#{version.major}.plist",
    "~/Library/Containers/com.stuntsoftware.Overflow3/Data/Library/Application Support/default.realm",
  ]
end
