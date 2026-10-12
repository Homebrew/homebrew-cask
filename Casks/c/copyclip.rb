cask "copyclip" do
  version "3.994"
  sha256 "92767de322a774b79fe6da0157f7b270b6a730e8c6b0b53b91abb0409e68225e"

  url "https://fiplab.com/updates/copyclip2/CopyClip-2-#{version}.zip"
  name "CopyClip"
  desc "Clipboard manager"
  homepage "https://fiplab.com/apps/copyclip-for-mac"

  livecheck do
    url "https://fiplab.com/updates/copyclip2/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "CopyClip 2.app"

  uninstall quit: "com.fiplab.copyclip#{version.major}"

  zap trash: [
    "~/Library/Application Scripts/com.fiplab.copyclip*",
    "~/Library/Containers/com.fiplab.copyclip*",
  ]
end
