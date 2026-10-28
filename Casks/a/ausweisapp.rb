cask "ausweisapp" do
  version "2.6.2"
  sha256 "b3aeb8ba128710003b512b11774abf36d9c01129370158fa62baa9dc5d530815"

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
