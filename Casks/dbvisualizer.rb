cask "dbvisualizer" do
  version "12.0.4"
  sha256 "d32eb064bcec64a603a835c839df093d8c48544423e3006df5ebabc3eacb8882"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.dots_to_underscores}_jre.dmg"
  name "DbVisualizer"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/dbvis_macos_(\d+(?:\_\d+)*)_jre\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  app "DbVisualizer.app"
  installer script: {
    executable: "DbVisualizer Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q", "-dir", staged_path.to_s],
  }

  uninstall signal: [["TERM", "com.dbvis.DbVisualizer"]]

  zap trash: "~/.dbvis"
end
