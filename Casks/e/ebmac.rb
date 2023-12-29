cask "ebmac" do
  version "1.46.1"
  sha256 "dc537911d917a694360bc739f9a188d5610a1ecc4b935beb3f89dad55a54ee4d"

  url "https://ebstudio.info/download/ebpocket/EBMac#{version}.dmg"
  name "EBMac"
  desc "Electronic dictionary viewer"
  homepage "https://ebstudio.info/manual/EBMac/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/EBMacv?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "EBMac.app"
end
