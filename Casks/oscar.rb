cask "oscar" do
  version "1.3.0"
  sha256 "89cd52d6e4ed932c87e2e4441e05678a4ae24bf1ea629d148ce0820bbd8afe6a"

  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  name "OSCAR"
  homepage "https://www.sleepfiles.com/OSCAR/"
  
  livecheck do
    url "https://www.sleepfiles.com/OSCAR/"
    strategy :page_match
    regex(%r{href=.*?/OSCAR-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"
  
  app "OSCAR.app"
end
