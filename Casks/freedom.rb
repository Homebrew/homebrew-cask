cask "freedom" do
  version "2.4.1"
  sha256 "386e539b5363b5db3cb4d2df03910dda0e607407d9326ad5bf89ce0f95a821ef"

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast "https://cdn.freedom.to/installers/updates/mac/Appcast.xml"
  name "Freedom"
  homepage "https://freedom.to/"

  auto_updates true

  app "Freedom.app"
end
