cask "artpip" do
  version "2.7.1"
  sha256 :no_check

  url "https://www.artpip.com/download/osx"
  name "Artpip"
  desc "Curated photographic desktop backgrounds"
  homepage "https://www.artpip.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Artpip.app"
end
