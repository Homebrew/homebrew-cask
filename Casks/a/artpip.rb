cask "artpip" do
  version "2.7.1"
  sha256 :no_check

  url "https://www.artpip.com/download/osx"
  name "Artpip"
  desc "Curated photographic desktop backgrounds"
  homepage "https://www.artpip.com/"

  disable! date: "2024-01-01", because: :no_longer_available

  app "Artpip.app"
end
