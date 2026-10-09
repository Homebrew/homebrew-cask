cask "iruka" do
  version "1.2.0.2"
  sha256 "4e32d1c3fc8d2f8e1d1f6aab2689d9692debc3ddc182a7f382e7ab7ca88fffca"

  url "https://github.com/dorienh/iruka-releases/releases/download/v#{version}/Iruka-#{version}.dmg"
  name "Iruka"
  desc "File manager with an embedded terminal"
  homepage "https://iruka.sh/"

  livecheck do
    url "https://raw.githubusercontent.com/dorienh/iruka-releases/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Iruka.app"

  zap trash: [
    "~/Library/Application Scripts/dorienherremans.com.Iruka",
    "~/Library/Application Scripts/dorienherremans.com.Iruka.FinderSync",
    "~/Library/Application Support/dorienherremans.com.Iruka",
    "~/Library/Application Support/Iruka",
    "~/Library/Caches/dorienherremans.com.Iruka",
    "~/Library/Containers/dorienherremans.com.Iruka",
    "~/Library/Containers/dorienherremans.com.Iruka.FinderSync",
    "~/Library/HTTPStorages/dorienherremans.com.Iruka",
    "~/Library/Preferences/dorienherremans.com.Iruka.plist",
    "~/Library/WebKit/dorienherremans.com.Iruka",
  ]
end
