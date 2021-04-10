cask "sunvox" do
  version "1.9.6c"
  sha256 "300eb555c47293370c99cdf5b45e852c581e92cecaaf2db88bca306191c91f53"

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name "SunVox"
  homepage "https://www.warmplace.ru/soft/sunvox/"

  livecheck do
    url "https://www.warmplace.ru/soft/sunvox/changelog.txt"
    strategy :page_match
    regex(%r{href=.*?/sunvox-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "sunvox/sunvox/macos/SunVox.app"
end
