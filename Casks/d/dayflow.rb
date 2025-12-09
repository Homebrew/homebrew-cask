cask "dayflow" do
  version "1.4.1"
  sha256 "9a07ca6fd936d7b023fe57701f8ec6aece2a37d379ab952dc3905136a94a7c45"

  url "https://github.com/JerryZLiu/Dayflow/releases/download/v#{version}/Dayflow.dmg"
  name "Dayflow"
  desc "Generate a timeline of your day, automatically"
  homepage "https://github.com/JerryZLiu/Dayflow"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Dayflow.app"

  zap trash: [
    "~/Library/Application Scripts/teleportlabs.com.Dayflow",
    "~/Library/Application Support/Dayflow",
    "~/Library/Containers/teleportlabs.com.Dayflow",
  ]
end
