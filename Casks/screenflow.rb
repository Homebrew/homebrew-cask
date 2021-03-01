cask "screenflow" do
  version "9.0.7,31680"
  sha256 "242e46d893043c8fabf6367066e772e85c53fee489367936bb38c806e810c652"

  url "https://www.telestream.net/download-files/screenflow/#{version.before_comma.major_minor.dots_to_hyphens}/ScreenFlow-#{version.before_comma}.dmg"
  name "ScreenFlow"
  desc "Screen recording and video editing software"
  homepage "https://www.telestream.net/screenflow/"

  livecheck do
    url "https://www.telestream.net/updater/screenflow/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "ScreenFlow.app"
end
