cask "copyclip" do
  version "2.9.98.7"
  sha256 :no_check

  url "https://fiplab.com/app-download/CopyClip_#{version.major}.zip"
  name "CopyClip"
  desc "Clipboard manager"
  homepage "https://fiplab.com/apps/copyclip-for-mac"

  livecheck do
    url :url
    strategy :extract_plist do |versions|
      versions.values.map(&:short_version).compact.first
    end
  end

  app "CopyClip #{version.major}.app"

  uninstall quit: "com.fiplab.copyclip#{version.major}"

  zap delete: [
    "~/Library/Application Scripts/com.fiplab.copyclip*helper",
    "~/Library/Application Scripts/com.fiplab.copyclip*",
    "~/Library/Containers/com.fiplab.copyclip*helper",
    "~/Library/Containers/com.fiplab.copyclip*",
  ]
end
