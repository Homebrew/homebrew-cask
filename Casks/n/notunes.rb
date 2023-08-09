cask "notunes" do
  version "3.3"
  sha256 "2e7aa2362927ea845d1531dfc935a4626fb6b9fb1873c90bbc397f6171757f20"

  url "https://github.com/tombonez/noTunes/releases/download/v#{version}/noTunes-#{version}.zip"
  name "noTunes"
  desc "Simple application that will prevent iTunes or Apple Music from launching"
  homepage "https://github.com/tombonez/noTunes"

  app "noTunes.app"

  zap trash: "~/Library/Preferences/digital.twisted.noTunes.plist"
end
