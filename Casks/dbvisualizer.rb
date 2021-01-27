cask "dbvisualizer" do
  version "12.0"
  sha256 "68ff1d2dd20d8e536959a21be7daf9491824f26afe47a0df4e60858ab3734658"

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
