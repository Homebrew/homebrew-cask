cask "dbvisualizer" do
  version "12.0.3"
  sha256 "12a4c46ee20f2c7c77a51d0c2868ae3808d704f996db5c1d9526b5dbea5b1786"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}_jre.dmg"
  appcast "https://www.dbvis.com/download/#{version.major}.0"
  name "DbVisualizer"
  homepage "https://www.dbvis.com/"

  app "DbVisualizer.app"
  installer script: {
    executable: "DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q", "-dir", staged_path.to_s],
  }

  uninstall signal: [["TERM", "com.dbvis.DbVisualizer"]]

  zap trash: "~/.dbvis"
end
