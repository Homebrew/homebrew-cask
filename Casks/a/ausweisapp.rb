cask "ausweisapp" do
  version "2.6.0"
  sha256 "f0a66c794b3b40cba0567781dbc310cc40a44acd5c97d3901f1c9c0a083d680e"

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
