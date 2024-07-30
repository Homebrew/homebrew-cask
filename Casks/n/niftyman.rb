cask "niftyman" do
  version "2.0.0"
  sha256 "9ffdfc517fe48f521793a03fcda3912becb004b7652821452f25a3be173f6f55"

  url "https://notion-menubar-updates.s3.amazonaws.com/Niftyman-#{version}.dmg",
      verified: "notion-menubar-updates.s3.amazonaws.com/"
  name "Niftyman"
  desc "Access the Notion tool from the menu bar"
  homepage "https://shadowfax.app/niftyman"

  livecheck do
    url "https://notion-menubar-updates.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Niftyman.app"

  zap trash: [
    "~/Library/Application Support/Niftyman",
    "~/Library/Preferences/com.shadowfax.niftyman.plist",
  ]

  caveats do
    requires_rosetta
  end
end
