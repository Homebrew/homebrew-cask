cask "prepros" do
  version "7.20.0"
  sha256 "25d000cf5b4d20673e20eb2f12c4a263f9531c491b9a291fe4831bc9c01d6a2b"

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
