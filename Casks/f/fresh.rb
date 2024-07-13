cask "fresh" do
  version "4.0.7"
  sha256 :no_check

  url "https://ironicsoftware.com/downloads/Fresh.zip"
  name "Fresh"
  desc "Keep your recently modified files at hand and up-to-date"
  homepage "https://ironicsoftware.com/fresh/"

  livecheck do
    url "https://ironicsoftware.com/downloads/fresh#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Fresh.app"

  zap trash: [
    "~/Library/Application Scripts/com.ironic.fresh#{version.major}",
    "~/Library/Application Support/Fresh",
    "~/Library/Caches/com.ironic.fresh#{version.major}",
    "~/Library/Containers/com.ironic.fresh#{version.major}",
    "~/Library/HTTPStorages/com.ironic.fresh#{version.major}",
    "~/Library/Preferences/com.ironic.fresh#{version.major}.plist",
  ]
end
