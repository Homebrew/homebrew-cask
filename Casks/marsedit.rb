cask "marsedit" do
  version "4.4.9"
  sha256 "78a83890d7b2df28bb83b10f02544c08cca6471f551ec4270f39132d647d7321"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
