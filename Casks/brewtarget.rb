cask "brewtarget" do
  version "2.3.0"
  sha256 "f1b3b33029f7d7cd873a1cdbf0741da22085f53dcefa2943dcfa8d35eda89fdd"

  url "https://launchpad.net/brewtarget/trunk/#{version}/+download/Brewtarget-#{version}.dmg",
      verified: "launchpad.net/brewtarget/"
  name "brewtarget"
  homepage "http://www.brewtarget.org/"

  livecheck do
    url "https://github.com/Brewtarget/brewtarget/releases"
    strategy :git
  end

  app "brewtarget.app"
end
