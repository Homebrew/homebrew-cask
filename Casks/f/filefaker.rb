cask "filefaker" do
  version "1.1,37"
  sha256 "15d0a1cbb98a344b508f82fa3b7ace9c5fe6383c229a72ccc683b29a760d33e9"

  url "https://filefaker.com/archive/FileFaker-v#{version.csv.first}.#{version.csv.second}-Installer.dmg"
  name "FileFaker"
  desc "Tool for generating fake files"
  homepage "https://filefaker.com/"

  livecheck do
    url "https://filefaker.com/archive/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :ventura"

  app "FileFaker.app"

  zap trash: [
    "~/Library/Application Scripts/com.filefaker.native.FileFaker",
    "~/Library/Containers/com.filefaker.native.FileFaker",
  ]
end
