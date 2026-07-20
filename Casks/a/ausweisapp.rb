cask "ausweisapp" do
  version "2.5.4"
  sha256 "9472083ecda8cf5f3107eb7e2f0f692d6b20f7e1d7f6ce2327144d11cc6fae05"

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
