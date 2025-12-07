cask "renamer" do
  version "7.1.4"
  sha256 "26dd7262aa5db8e42cb002a65f0d0ae8f359c51a7d95d96caa490e9062b7a722"

  url "https://incredible-bee-honeycomb.fra1.digitaloceanspaces.com/apps/Renamer-#{version.major}/Renamer.zip",
      verified: "incredible-bee-honeycomb.fra1.digitaloceanspaces.com/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  livecheck do
    url "https://github.com/incbee/renamer-7-releases/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :sequoia"

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
