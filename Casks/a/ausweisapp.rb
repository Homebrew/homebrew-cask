cask "ausweisapp" do
  version "2.5.3"
  sha256 "b98a56ec9a6018c3df562cced9a06bfdd1e6184ebf92460147c0eeee4c4602ed"

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
  depends_on macos: :sonoma

  app "AusweisApp.app"

  zap trash: "~/Library/Application Scripts/com.governikus.ausweisapp2"

  caveats do
    requires_rosetta
  end
end
