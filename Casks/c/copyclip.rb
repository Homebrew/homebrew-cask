cask "copyclip" do
  version "3.994.3"
  sha256 "73ea924dbc7acccd432f196d114967ab0bb1065a51ab0a46ff9732dcfd71d540"

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
