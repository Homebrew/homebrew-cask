cask "oscar" do
  version "1.3.1"
  sha256 "5378de6b994e5a526de3912e14ad9ce26d22f38e8c5d8371371b3966295f4438"

  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url "https://www.sleepfiles.com/OSCAR/"
    strategy :page_match
    regex(%r{href=.*?/OSCAR-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "OSCAR.app"
end
