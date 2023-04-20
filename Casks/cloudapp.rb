cask "cloudapp" do
  version "6.6.14,2412"
  sha256 "49642e145af85b530d488ae7861b7de22a7e53930ec4736e9617113b632caa78"

  url "https://downloads.getcloudapp.com/mac/CloudApp-#{version.csv.first}.#{version.csv.last}.zip"
  name "CloudApp"
  desc "Visual communication platform"
  homepage "https://www.getcloudapp.com/"

  livecheck do
    url "https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/CloudApp[._-](\d+(?:\.\d+)+)\.(\d+)\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CloudApp.app"

  zap trash: "~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist"
end
