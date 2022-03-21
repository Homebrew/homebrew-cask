cask "dbvisualizer" do
  version "13.0.2"
  sha256 "e36e761b7146060a982b6380f43955c3c9585b6de4e080d6f1e7d5498284d6a6"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}_jre.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download"
    regex(/Latest\s*Version:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DbVisualizer.app"
  installer script: {
    executable: "DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q", "-dir", staged_path.to_s],
  }

  uninstall signal: [["TERM", "com.dbvis.DbVisualizer"]]

  zap trash: "~/.dbvis"
end
