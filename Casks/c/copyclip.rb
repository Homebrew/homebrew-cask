cask "copyclip" do
  version "3.991"
  sha256 "f8a2fdff4f6a17eb4b56c95040ab4e30425232e39aa9a1d3fc25206cea83f517"

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
