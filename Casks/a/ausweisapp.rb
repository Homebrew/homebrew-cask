cask "ausweisapp" do
  version "2.6.1"
  sha256 "f7005d34beccd1ce944ac7a4888c5c15cc0d594d4427d5673d4288589dbea969"

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
