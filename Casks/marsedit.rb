cask "marsedit" do
  version "4.5.7,9821"
  sha256 "617530fc8f660c84ad2094293f449e10af9572d481f188c07bb5ed42e848e276"

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
