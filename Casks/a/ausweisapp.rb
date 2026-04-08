cask "ausweisapp" do
  version "2.5.0"
  sha256 "ae698715cccf8ab1d80272de90e6c474a0f0e4431f72884dc8b8700d12b9dfc3"

  url "https://github.com/Governikus/AusweisApp/releases/download/#{version}/AusweisApp-#{version}.dmg",
      verified: "github.com/Governikus/AusweisApp/"
  name "AusweisApp"
  desc "Official eID-Client of the Federal Government of Germany"
  homepage "https://www.ausweisapp.bund.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "AusweisApp.app"

  zap trash: "~/Library/Application Scripts/com.governikus.ausweisapp2"

  caveats do
    requires_rosetta
  end
end
