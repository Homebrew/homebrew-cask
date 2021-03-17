cask "niftyman" do
  version "1.0.4"
  sha256 "f725330b9d875a30f1987d9396f26c82e548012b85eb6d3fe8d32448582f9cb1"

  url "https://notion-menubar-updates.s3-us-west-2.amazonaws.com/Niftyman-#{version}.dmg",
      verified: "notion-menubar-updates.s3-us-west-2.amazonaws.com/"
  appcast "https://notion-menubar-updates.s3.amazonaws.com/latest-mac.yml"
  name "Niftyman"
  desc "Access the Notion tool from the menu bar"
  homepage "https://shadowfax.app/niftyman"

  app "Niftyman.app"
end
