cask "bonjeff" do
  version "1.0.8"
  sha256 "b352025d99a4eb0624ec15714aa30b434a98f6ec7bebcd040d3301ee7bb120cd"

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff.#{version}.zip"
  appcast "https://github.com/lapcat/Bonjeff/releases.atom"
  name "Bonjeff"
  homepage "https://github.com/lapcat/Bonjeff"

  depends_on macos: ">= :sierra"

  app "Bonjeff.app"

  zap trash: [
    "~/Library/Application Scripts/com.lapcatsoftware.bonjeff",
    "~/Library/Containers/com.lapcatsoftware.bonjeff",
  ]
end
