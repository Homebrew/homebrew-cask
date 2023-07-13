cask "prepros" do
  version "7.8.3"
  sha256 "8a3620847741452750efec5e635c177ab8e1cb7f988111bb9633cd8d1cf7db00"

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
