cask "oscar" do
  version "1.5.0"
  sha256 "3ec1ba2f8ab0234964106bf02a7ba11a97de9f09fe3ec2cca9c1eeeac30af846"

  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "OSCAR.app"
end
