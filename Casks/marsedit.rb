cask "marsedit" do
  version "4.4.5"
  sha256 "8eb2908c239c7229af40df66097baba62e8b66ca9e9edb17c84def88823d4486"

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast "https://red-sweater.com/marsedit/appcast4.php"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://red-sweater.com/marsedit/"

  depends_on macos: ">= :sierra"

  app "MarsEdit.app"
end
