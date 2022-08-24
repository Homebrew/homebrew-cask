cask "freedom" do
  version "2.11.1,2036.1"
  sha256 "a8b231202f433dabb8a2457037321ed8d33605ed8fcb794528619df211632d69"

  url "https://cdn.freedom.to/installers/updates/mac/#{version.csv.first}/Freedom.zip"
  name "Freedom"
  desc "App and website blocker"
  homepage "https://freedom.to/"

  livecheck do
    url "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Freedom.app"
end
