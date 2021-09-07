cask "fontstand" do
  version "2.4.0,105"
  sha256 :no_check

  url "https://fontstand.com/apps/download/69"
  name "Fontstand"
  desc "Font discovery and rental platform"
  homepage "https://fontstand.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Fontstand.app"
end
