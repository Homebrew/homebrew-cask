cask "marsedit" do
  version "4.5.8,10197"
  sha256 "f0b1cb3bab176699f7034e7c7639ef8e9980cea3bb1ed3f7a4c84e5d3dd5226c"

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
