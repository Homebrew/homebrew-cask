cask "ebmac" do
  version "1.46.0"
  sha256 "bfe6b784586b50667404bba293cd66d8deff0ac20978b4a8d2ca1bd5ea7cb252"

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
