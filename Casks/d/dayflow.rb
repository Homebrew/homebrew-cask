cask "dayflow" do
  version "2.7.3"
  sha256 "6b2beb101ac800d8460cdf57c690b27575218f24ae55e6d0eb0e92437eb1108a"

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
