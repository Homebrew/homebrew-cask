cask "petrichor" do
  version "1.7.2"
  sha256 "6de6d3e16bc14d71fdf4b384114209a9b61734956673d3f7a30930e283e6db50"

  url "https://github.com/kushalpandya/Petrichor/releases/download/v#{version}/Petrichor-#{version}-Universal.dmg"
  name "Petrichor"
  desc "Offline Music Player"
  homepage "https://petrichor.page/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Petrichor.app"

  zap trash: [
    "~/Library/Application Scripts/org.Petrichor",
    "~/Library/Containers/org.Petrichor",
    "~/Library/Saved Application State/org.Petrichor.savedState",
  ]
end
