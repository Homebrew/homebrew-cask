cask "freedom" do
  version "2.5.7,1886"
  sha256 "fcf4d35252236f56af54f71db7e9b84de258024d32f5919a41e24cf0caa6053e"

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
