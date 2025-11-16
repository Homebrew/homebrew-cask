cask "petrichor" do
  version "1.2.0"
  sha256 "802d4fa77794072ffacfcc4c8391821f6bb25f363f9a72d9b15805f868b424c4"

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
