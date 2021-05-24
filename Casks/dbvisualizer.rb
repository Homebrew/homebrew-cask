cask "dbvisualizer" do
  version "12.0.6"
  sha256 "40d44beab6fed302ca903c55db53d37c1f2671ee2cf50ac8c391ce3f5f84508b"

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
