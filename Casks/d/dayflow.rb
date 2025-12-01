cask "dayflow" do
  version "1.3.2"
  sha256 "6497c4d49faea83188d6f48876fcd9b7bb75a0a50f364d43551f2fc0882914d4"

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
