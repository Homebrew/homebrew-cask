cask "ausweisapp" do
  version "2.5.5"
  sha256 "907d059ab4fed21986ca9960d6dbc0b816746b617d4a0fa1efc220ec69d7559f"

  url "https://github.com/Governikus/AusweisApp/releases/download/#{version}/AusweisApp-#{version}.dmg"
  name "AusweisApp"
  desc "Official eID-Client of the Federal Government of Germany"
  homepage "https://www.ausweisapp.bund.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "AusweisApp.app"

  zap trash: "~/Library/Application Scripts/com.governikus.ausweisapp2"

  caveats do
    requires_rosetta
  end
end
