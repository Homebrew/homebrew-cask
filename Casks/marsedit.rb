cask "marsedit" do
  version "4.4.12,9528"
  sha256 "a8821e26ce32f8ae3836ac75cfa7c0fd491a45ca715ca58d1d68add2dfb86512"

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
