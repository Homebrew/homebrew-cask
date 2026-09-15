cask "dayflow" do
  version "2.5.0"
  sha256 "52f185b3adbd541d8fc1d3ef1b87ffb79852c2674a7488671f0a707f59d3c5e1"

  url "https://github.com/JerryZLiu/Dayflow/releases/download/v#{version}/Dayflow.dmg"
  name "Dayflow"
  desc "Generate a timeline of your day, automatically"
  homepage "https://github.com/JerryZLiu/Dayflow"

  livecheck do
    url "https://jerryzliu.github.io/Dayflow/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Dayflow.app"
  binary "#{appdir}/Dayflow.app/Contents/Helpers/dayflow"

  uninstall quit: "teleportlabs.com.Dayflow"

  zap trash: [
    "~/Library/Application Scripts/teleportlabs.com.Dayflow",
    "~/Library/Application Support/Dayflow",
    "~/Library/Containers/teleportlabs.com.Dayflow",
  ]
end
