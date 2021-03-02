cask "dbvisualizer" do
  version "12.0.2"
  sha256 "0b25eda4923d2ff0fcf1dcbb3d74f352e2ab6a1c058e541d6a9d371b58573da3"

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
