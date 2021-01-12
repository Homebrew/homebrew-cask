cask "space-saver" do
  version "0.5"
  sha256 "a6f26f90aef4dd06b222d02bf47c52004b9f71af6e56258467a955fea1d9bea8"

  url "https://www.mariogt.com/appsChest/SpaceSaver#{version.dots_to_hyphens}.zip"
  name "Space Saver"
  desc "Delete local Time Machine backups"
  homepage "https://www.mariogt.com/space-saver.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Download Space Saver \(ver (\d+(?:\.\d+)*)\)/i)
  end

  app "Space Saver.app"
end
