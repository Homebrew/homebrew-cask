cask "marsedit" do
  version "5.0.1,10611"
  sha256 "1fc38c43a005f93d4a5d5f3da04ef60567163e9b6c6c14ede76c6f44442a280f"

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
