cask "copyclip" do
  version "3.986"
  sha256 "5d481068b7445d571f2a3c39975d9bab69183ad4e87daf55d3cc0fe358fd46c9"

  url "https://fiplab.com/updates/copyclip2/CopyClip-2-#{version}.zip"
  name "CopyClip"
  desc "Clipboard manager"
  homepage "https://fiplab.com/apps/copyclip-for-mac"

  livecheck do
    url "https://fiplab.com/updates/copyclip2/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "CopyClip 2.app"

  uninstall quit: "com.fiplab.copyclip#{version.major}"

  zap delete: [
    "~/Library/Application Scripts/com.fiplab.copyclip*",
    "~/Library/Containers/com.fiplab.copyclip*",
  ]
end
