cask "petrichor" do
  version "1.7.3"
  sha256 "3d38af469ccda3df1e423d8209e8f29970190cc49f6e67193493eb3a0690ecc6"

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
