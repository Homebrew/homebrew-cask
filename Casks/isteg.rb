cask "isteg" do
  version "1.6.2"
  sha256 "5f385efce3416c9df75c6d97a35de82b76d9c829c2956461dd2fc95ca843702d"

  url "https://www.hanynet.com/isteg-#{version}.zip"
  name "iSteg"
  homepage "https://www.hanynet.com/isteg/"

  livecheck do
    url "https://www.hanynet.com/isteg/"
    strategy :page_match
    regex(%r{href=.*?/isteg-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "iSteg.app"
end
