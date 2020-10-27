cask "marsedit" do
  version "4.4.4"
  sha256 "5ecca1af65ffe9731bf67c12b0a3e8996c0ef0891ffdbed9a2181e06b346c3b7"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
