cask "kazumi" do
  version "1.6.0"
  sha256 "a35a5995fc36d9c3d39a4f31c60e1350c2ee2db920fb756013cbb7a9f8a2e0f6"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"
  name "kazumi"
  desc "Anime collection app based on custom rules"
  homepage "https://github.com/Predidit/Kazumi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "kazumi.app"

  zap trash: [
    "~/Library/Application Scripts/com.example.kazumi",
    "~/Library/Containers/com.example.kazumi",
  ]

  caveats "This application is not signed."
end
