cask "petrichor" do
  version "1.2.3"
  sha256 "6bb284d090454671b543aa36d2184f2ce73667b61f996e96cc2367b9b511dcee"

  url "https://github.com/kushalpandya/Petrichor/releases/download/v#{version}/Petrichor-#{version}-Universal.dmg"
  name "Petrichor"
  desc "Offline Music Player"
  homepage "https://github.com/kushalpandya/Petrichor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Petrichor.app"

  zap trash: [
    "~/Library/Containers/org.Petrichor",
    "~/Library/Saved Application State/org.Petrichor.savedState",
  ]
end
