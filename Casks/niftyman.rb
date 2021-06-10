cask "niftyman" do
  version "1.1.2"
  sha256 "b9fe90eff7427331360e0c2b603b443a383b3bbe936de5625644e70541bb6f1b"

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
