cask "space-saver" do
  version "0.6"
  sha256 "04c58635d432598573b5fadfe6cbde3a5ac2d17aeeb927bf6e413a452312f544"

  url "https://www.mariogt.com/appsChest/SpaceSaver#{version.dots_to_hyphens}.zip"
  name "Space Saver"
  desc "Delete local Time Machine backups"
  homepage "https://www.mariogt.com/space-saver.html"

  livecheck do
    url :homepage
    regex(/Download Space Saver \(ver (\d+(?:\.\d+)*)\)/i)
  end

  app "Space Saver.app"
end
