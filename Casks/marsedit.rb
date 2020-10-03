cask "marsedit" do
  version "4.4.3"
  sha256 "5609c98285150574c4dd58ebbbf69727decb4c704bd3cad9489ff1e5939c13cf"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
