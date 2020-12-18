cask "marsedit" do
  version "4.4.10"
  sha256 "15bb64c80cf5dab4257383de7efc9acccbbefb87aa38f3007be338faeba4a589"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
