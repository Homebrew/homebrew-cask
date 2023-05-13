cask "iswiff" do
  version "1.14,94"
  sha256 :no_check

  url "https://echoone.com/iswiff/iSwiff.zip"
  name "iSwiff"
  desc "Full screen Flash outside the browser"
  homepage "https://echoone.com/iswiff/"

  depends_on macos: "<= :big_sur"

  app "iSwiff.app"

  caveats do
    discontinued
  end
end
