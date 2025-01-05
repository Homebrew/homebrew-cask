cask "notunes" do
  version "3.5"
  sha256 "07835cf9f3bf314d11f2ebe528072a200ffa2d55f38de59085979c2d476ea3d5"

  url "https://github.com/tombonez/noTunes/releases/download/v#{version}/noTunes-#{version}.zip"
  name "noTunes"
  desc "Simple application that will prevent iTunes or Apple Music from launching"
  homepage "https://github.com/tombonez/noTunes"

  depends_on macos: ">= :mojave"

  app "noTunes.app"

  zap trash: "~/Library/Preferences/digital.twisted.noTunes.plist"
end
