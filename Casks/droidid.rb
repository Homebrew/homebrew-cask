cask "droidid" do
  version "1.4,7"
  sha256 :no_check

  url "https://www.suyashsrijan.com/droidid/download/DroidID.zip"
  name "DroidID"
  homepage "https://www.suyashsrijan.com/droidid/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "DroidID.app"
end
