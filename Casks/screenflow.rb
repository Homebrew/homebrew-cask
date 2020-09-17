cask "screenflow" do
  version "9.0.5"
  sha256 "914b89b83cfd42cd246e00327194c7b3d993694a4a7be8d6fd94da3059a50ac8"

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast "https://www.telestream.net/updater/screenflow/appcast.xml"
  name "ScreenFlow"
  desc "Screen recording and video editing software"
  homepage "https://www.telestream.net/screenflow/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "ScreenFlow.app"
end
