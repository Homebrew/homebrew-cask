cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.25.0"
  sha256 arm:   "ccbc49e990ed76a68c0b8e96f3f54db9f54c84ba238c8fb2ff523002cacd9e78",
         intel: "6af908da76c65f90b41a37939ddd762adb554b3069ce18d3d58bf9c6af797cfe"

  url "https://github.com/datlechin/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg",
      verified: "github.com/datlechin/TablePro/"
  name "TablePro"
  desc "Native database client for MySQL, PostgreSQL, SQLite, and MongoDB"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/datlechin/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TablePro.app"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
