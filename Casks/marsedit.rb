cask "marsedit" do
  version "4.4.12"
  sha256 "a8821e26ce32f8ae3836ac75cfa7c0fd491a45ca715ca58d1d68add2dfb86512"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
