cask "nocturne" do
  version "3.0"
  sha256 "895ac0c5493b3877cf1cc6d62dfb5c0fee3c6bd41d44bd3c87554e52a0cf1462"

  url "https://github.com/Daij-Djan/nocturne/blob/master/Dist/#{version}.zip?raw=true"
  name "Nocturne"
  desc "Adjust display colors to suit low light conditions"
  homepage "https://github.com/Daij-Djan/nocturne"

  livecheck do
    url :homepage
    regex(%r{href=.*?nocturne/blob/master/Dist/v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match
  end

  app "Nocturne.app"
end
