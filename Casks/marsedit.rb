cask "marsedit" do
  version "4.4.6"
  sha256 "41883427134caaacb374f7e75b6d307f7808596af2cecdbc4f8628c0e732c603"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
