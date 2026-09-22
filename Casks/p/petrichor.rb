cask "petrichor" do
  version "1.7.1"
  sha256 "05f1f156ac2e87b481f29e9fd7e4e9a952f7a170743b3016e6e53c24bd2f6ec1"

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
