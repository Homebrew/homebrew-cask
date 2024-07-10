cask "droidid" do
  version "1.4,7"
  sha256 :no_check

  url "https://www.suyashsrijan.com/droidid/download/DroidID.zip"
  name "DroidID"
  homepage "https://www.suyashsrijan.com/droidid/"

  deprecate! date: "2024-07-10", because: :unmaintained

  app "DroidID.app"

  caveats do
    requires_rosetta
  end
end
