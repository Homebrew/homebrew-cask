cask "copyclip" do
  version "2.9.99.2"
  sha256 :no_check

  url "https://fiplab.com/app-download/CopyClip_#{version.major}.zip"
  name "CopyClip"
  desc "Clipboard manager"
  homepage "https://fiplab.com/apps/copyclip-for-mac"

  livecheck do
    url :url
    strategy :extract_plist do |versions|
      versions.values.filter_map(&:short_version).first
    end
  end

  app "CopyClip #{version.major}.app"

  uninstall quit: "com.fiplab.copyclip#{version.major}"

  zap delete: [
    "~/Library/Application Scripts/com.fiplab.copyclip*",
    "~/Library/Containers/com.fiplab.copyclip*",
  ]
end
