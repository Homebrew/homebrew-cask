cask "ausweisapp" do
  version "2.4.0"
  sha256 "bce7cfeb988a6f50e99c45a3cb66f32b1b4effcb2b1e72bfdbc51363209b24b4"

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
  depends_on macos: ">= :ventura"

  app "AusweisApp.app"

  zap trash: "~/Library/Application Scripts/com.governikus.ausweisapp2"

  caveats do
    requires_rosetta
  end
end
