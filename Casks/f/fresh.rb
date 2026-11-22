cask "fresh" do
  version "5.0.3"
  sha256 :no_check

  url "https://static.ironicsoftware.com/downloads/Fresh.zip"
  name "Fresh"
  desc "Keep your recently modified files at hand and up-to-date"
  homepage "https://ironicsoftware.com/fresh/"

  livecheck do
    url "https://static.ironicsoftware.com/downloads/fresh#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "general-software-fresh"
  depends_on macos: :sonoma

  app "Fresh.app"

  uninstall quit: "com.ironic.fresh#{version.major}"

  zap trash: [
    "~/Library/Application Scripts/com.ironic.fresh#{version.major}",
    "~/Library/Application Support/Fresh",
    "~/Library/Caches/com.ironic.fresh#{version.major}",
    "~/Library/Containers/com.ironic.fresh#{version.major}",
    "~/Library/HTTPStorages/com.ironic.fresh#{version.major}",
    "~/Library/Preferences/com.ironic.fresh#{version.major}.plist",
  ]
end
