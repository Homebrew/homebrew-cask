cask "niftyman" do
  version "1.0.3"
  sha256 "d77e091b32061de8327c5d19c296398e76e2f759ece2d39af17cc8d0595f4daa"

  # notion-menubar-updates.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://notion-menubar-updates.s3-us-west-2.amazonaws.com/Niftyman-#{version}.dmg"
  name "Niftyman"
  desc "Beautifully crafted Notion experience in menu bar"
  homepage "https://shadowfax.app/niftyman"

  app "Niftyman.app"
end
