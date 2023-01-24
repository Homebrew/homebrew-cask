cask "niftyman" do
  version "1.2.0"
  sha256 "a841228e1234791e04dc67b8d0c82441e6136d8844f99b2acbbb9a7958f0a4d0"

  url "https://notion-menubar-updates.s3-us-west-2.amazonaws.com/Niftyman-#{version}.dmg",
      verified: "notion-menubar-updates.s3-us-west-2.amazonaws.com/"
  name "Niftyman"
  desc "Access the Notion tool from the menu bar"
  homepage "https://shadowfax.app/niftyman"

  livecheck do
    url "https://notion-menubar-updates.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Niftyman.app"
end
