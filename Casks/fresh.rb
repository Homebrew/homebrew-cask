cask "fresh" do
  version "4.0.4,404.101"
  sha256 :no_check

  url "https://ironicsoftware.com/downloads/Fresh.zip"
  name "Fresh"
  desc "Keep your recently modified files at hand and up-to-date"
  homepage "https://ironicsoftware.com/fresh/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Fresh.app"
end
