cask "niftyman" do
  version "1.1.1"
  sha256 "cb8b6cb00bc0a564e664557d94dc6fe374097d7eb93a0c37c625f6b98463a019"

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
