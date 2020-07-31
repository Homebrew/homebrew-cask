cask "front" do
  version "3.24.5"
  sha256 "29a6ac9f94b18ac158c5a92bd7b269c253cf82d0efcbd5055d63c972bcc3ac3f"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  appcast "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
  name "Front"
  homepage "https://frontapp.com/"

  app "Front.app"
end
