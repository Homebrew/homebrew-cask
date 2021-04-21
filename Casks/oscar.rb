cask "oscar" do
  version "1.2.0"
  sha256 "adaa1c9412c3e3d37fe275d1e1670b38fa1cdfdf58bd829a9db03cbd8f66a179"

  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  name "OSCAR"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url "https://www.sleepfiles.com/OSCAR/"
    strategy :page_match
    regex(%r{href=.*?/OSCAR-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "OSCAR.app"
end
