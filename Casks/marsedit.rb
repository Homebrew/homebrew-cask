cask "marsedit" do
  version "4.6,10367"
  sha256 "484f532ae2b1d2a9ac56c76cd66ec90cca939c0d2c53e97e35a9ab52eea6a140"

  url "https://redsweater.com/marsedit/MarsEdit#{version.csv.first}.zip"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://redsweater.com/marsedit/"

  livecheck do
    url "https://redsweater.com/marsedit/appcast#{version.major}.php"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
