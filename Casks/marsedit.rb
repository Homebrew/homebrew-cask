cask "marsedit" do
  version "4.4.8"
  sha256 "5473f15430ecebf86007c8e0b8479f7d511d725b84e1c3b7b560eb32863fabf9"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
