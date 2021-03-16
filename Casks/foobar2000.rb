cask "foobar2000" do
  version "2.2.16"
  sha256 "7e8a18395c96ce0337ffc36592d06f63e6817b15cb95c4de0255b3b6054aa8a4"

  url "https://www.foobar2000.org/files/foobar2000-v#{version}.dmg"
  name "foobar2000"
  desc "Audio player"
  homepage "https://www.foobar2000.org/mac"

  app "foobar2000.app"

  zap trash: [
    "~/Library/foobar2000",
    "~/Library/Preferences/com.foobar2000.mac.plist",
  ]
end
