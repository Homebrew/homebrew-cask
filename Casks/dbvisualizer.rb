cask "dbvisualizer" do
  version "12.0.1"
  sha256 "dc50b7c9382b0e1da896a3673bf35275c330637dab9b78d97b6ff4f32c77e424"

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
