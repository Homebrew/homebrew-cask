cask "isteg" do
  version "1.6.2"
  sha256 "5f385efce3416c9df75c6d97a35de82b76d9c829c2956461dd2fc95ca843702d"

  url "https://www.hanynet.com/isteg-#{version}.zip"
  name "iSteg"
  desc "Encryption tool"
  homepage "https://www.hanynet.com/isteg/"

  disable! date: "2024-07-14", because: "is 32-bit only"

  app "iSteg.app"
end
