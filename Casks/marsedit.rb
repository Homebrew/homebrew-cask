cask "marsedit" do
  version "4.4.11"
  sha256 "14077fd3e53fbe91faaa1b75a1d625c4a08e98a5a857b8e87983cdfad6affbae"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
