cask "petrichor" do
  version "1.1.3"
  sha256 "b682458748d77ff3a20d26f74e75fd29d3fde505a79e4e88ae961295735bc08d"

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
