cask "prepros" do
  version "7.26.0"
  sha256 "5231ca24adaf7840a491a34fe1ab648e554ddee86db980d358b1b22d7c2947f8"

  url "https://downloads.prepros.io/v#{version.major}/#{version}/Prepros-#{version}.zip"
  name "Prepros"
  desc "Web development companion"
  homepage "https://prepros.io/"

  livecheck do
    url "https://prepros.io/downloads/stable/mac"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Prepros.app"

  zap trash: [
    "~/Library/Application Support/Prepros",
    "~/Library/Application Support/Prepros-#{version.major}",
    "~/Library/Preferences/io.prepros.prepros.plist",
    "~/Library/Saved Application State/io.prepros.prepros.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
