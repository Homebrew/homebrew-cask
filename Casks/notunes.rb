cask "notunes" do
  version "3.2"
  sha256 "0ad78b0a7bb2e0bb724f0de65107d5397c5a32e1d974f7b3533acc8a0dd129e7"

  url "https://github.com/tombonez/noTunes/releases/download/v#{version}/noTunes-#{version}.zip"
  name "noTunes"
  desc "Simple application that will prevent iTunes or Apple Music from launching"
  homepage "https://github.com/tombonez/noTunes"

  app "noTunes.app"

  zap trash: "~/Library/Preferences/digital.twisted.noTunes.plist"
end
