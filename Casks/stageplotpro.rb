cask "stageplotpro" do
  version "2.9.9.2"
  sha256 "748786ecec45adb5a506be89d5875573a3269ccb8dbaa729938d4986496c16da"

  url "https://www.stageplot.com/download/StagePlotPro_#{version}.dmg"
  appcast "https://www.stageplot.com/DownloadPage.html"
  name "StagePlotPro"
  homepage "https://www.stageplot.com/"

  app "StagePlotPro\ #{version}.app"

  uninstall quit: "com.divertisma.StagePlotPro"

  zap trash: [
    "~/Library/Caches/com.divertisma.StagePlotPro",
    "~/Library/Preferences/StagePlotProPrefs",
  ]
end
