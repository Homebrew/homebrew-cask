cask "marsedit" do
  version "4.4.7"
  sha256 "b774b51cc1bf84f0d2168fc4dc103e0b2fb3cac293b51201f97816ac60b8802c"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
