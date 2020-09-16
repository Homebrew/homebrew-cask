cask "marsedit" do
  version "4.4.2"
  sha256 "8a8100eb8fe9d42cfee5fca2fbd93519f0e8b11f067f9e0ebcd5e7e109764fda"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
