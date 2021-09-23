cask "notunes" do
  version "3.1"
  sha256 "eff82f83b877b1b6a05403e5507f27df693877c38c7d223209de38f56d5d02fb"

  url "https://github.com/tombonez/noTunes/releases/download/v#{version}/noTunes-#{version}.zip"
  name "noTunes"
  desc "Simple application that will prevent iTunes or Apple Music from launching"
  homepage "https://github.com/tombonez/noTunes"

  app "noTunes.app"

  zap trash: "~/Library/Preferences/digital.twisted.noTunes.plist"
end
