cask "ausweisapp" do
  version "2.6.3"
  sha256 "696e56a3541f0ccf4dfc34b340f32457125a24bc5981f49310836bdcb75b4e70"

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

  zap trash: [
    "~/Library/Application Scripts/com.governikus.ausweisapp2",
    "~/Library/Containers/com.governikus.ausweisapp2",
  ]
end
