cask "dbvisualizer" do
  version "12.1.4"
  sha256 "490ded246c9b1a0095f12533592a36984b9ab50087fba7cb5f127b0501bd3e34"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}_jre.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download"
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
