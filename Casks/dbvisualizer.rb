cask "dbvisualizer" do
  version "12.0.8"
  sha256 "c580bf43f6a7545340a2b8733f2862da9d43af32cfae8d266ce1aa1ab9df0d90"

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
