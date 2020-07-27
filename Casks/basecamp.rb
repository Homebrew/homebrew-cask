cask "basecamp" do
  version "3"
  sha256 :no_check # required as upstream package is updated in-place

  # bc3-desktop.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://bc3-desktop.s3.amazonaws.com/mac/basecamp#{version}.dmg"
  name "Basecamp"
  homepage "https://basecamp.com/help/#{version}/guides/apps/mac"

  auto_updates true

  app "Basecamp #{version}.app"
end
