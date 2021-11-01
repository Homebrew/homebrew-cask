cask "ebmac" do
  version "1.46.1"
  sha256 "dc537911d917a694360bc739f9a188d5610a1ecc4b935beb3f89dad55a54ee4d"

  url "http://ebstudio.info/download/ebpocket/EBMac#{version}.dmg"
  name "EBMac"
  homepage "http://ebstudio.info/manual/EBMac/"

  livecheck do
    url "http://ebstudio.info/manual/EBMac/"
    strategy :page_match
    regex(%r{href=.*?/EBMac(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "EBMac.app"
end
