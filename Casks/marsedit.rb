cask "marsedit" do
  version "4.4"
  sha256 "92847eca5649183fcb190db8f5cad2f56546a7425d51fe1119c23579b254b74f"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
