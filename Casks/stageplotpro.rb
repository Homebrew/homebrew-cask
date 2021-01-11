cask "stageplotpro" do
  version "2.9.9.2"
  sha256 "748786ecec45adb5a506be89d5875573a3269ccb8dbaa729938d4986496c16da"

  url "https://www.stageplot.com/download/StagePlotPro_#{version}.dmg"
  name "StagePlotPro"
  homepage "https://www.stageplot.com/"

  livecheck do
    url "https://www.stageplot.com/DownloadPage.html"
    strategy :page_match
    regex(%r{href=.*?/StagePlotPro_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "StagePlotPro\ #{version}.app"

  uninstall quit: "com.divertisma.StagePlotPro"

  zap trash: [
    "~/Library/Caches/com.divertisma.StagePlotPro",
    "~/Library/Preferences/StagePlotProPrefs",
  ]
end
