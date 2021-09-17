cask "marsedit" do
  version "4.5.2,9701"
  sha256 "2bbbcbe7ac66d70f01dc6e8fa6e9085a5ca9c23c136fb43873932228143e8196"

  url "https://redsweater.com/marsedit/MarsEdit#{version.before_comma}.zip"
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
