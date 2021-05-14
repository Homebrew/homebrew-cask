cask "qlab" do
  version "4.6.9,4609"
  sha256 "f2367d11ff74fbbd24f52c05c5c7b6bf65ffc5c3768138300ad8760821429d80"

  url "https://qlab.app/downloads/archive/QLab-#{version.before_comma}.zip"
  name "QLab"
  homepage "https://qlab.app/"

  livecheck do
    url "https://qlab.app/appcast/v#{version.major}/"
    strategy :sparkle
  end

  auto_updates true

  app "QLab.app"
end
