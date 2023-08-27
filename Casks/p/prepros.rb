cask "prepros" do
  version "7.11.0"
  sha256 "d0b9d3182bff4319b27b8182ceeface80849c05da1da46ac6f54ce089c6ec15e"

  url "https://downloads.prepros.io/v#{version.major}/#{version}/Prepros-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  app "Prepros.app"

  zap trash: [
    "~/Library/Application Support/Prepros",
    "~/Library/Application Support/Prepros-#{version.major}",
    "~/Library/Preferences/io.prepros.prepros.plist",
    "~/Library/Saved Application State/io.prepros.prepros.savedState",
  ]
end
