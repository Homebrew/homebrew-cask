cask "dbvisualizer" do
  version "12.0.7"
  sha256 "25c96082fd31ca065e398cefa4ab509af915b44ab4f2210b4d06a3e9474c452e"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}_jre.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download/#{version.major_minor}"
    regex(/Latest\s*Version:\s*(\d+(?:\.\d+)*)/i)
  end

  app "DbVisualizer.app"
  installer script: {
    executable: "DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q", "-dir", staged_path.to_s],
  }

  uninstall signal: [["TERM", "com.dbvis.DbVisualizer"]]

  zap trash: "~/.dbvis"
end
