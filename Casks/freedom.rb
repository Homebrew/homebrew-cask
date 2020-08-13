cask "freedom" do
  version "2.4"
  sha256 "c68e10e2bb2437091ff482f3569ba9678b3569383e774f2eaaa6fb712aaf49e2"

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
  name "Freedom"
  homepage "https://freedom.to/"

  auto_updates true

  app "Freedom.app"
end
