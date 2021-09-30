cask "freedom" do
  version "2.5.9,1922"
  sha256 "2a3a5197f6add7cfd9be4b5ec0a665f4480cc2467149cf2824b04a0c42358f0c"

  url "https://cdn.freedom.to/installers/updates/mac/#{version.before_comma}/Freedom.zip"
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
