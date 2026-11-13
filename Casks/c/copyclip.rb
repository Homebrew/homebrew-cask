cask "copyclip" do
  version "3.994.4"
  sha256 "3820ee67881e99972c1621822da336a3b019f3aadf34b1093c37d2e05fdeec5f"

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
