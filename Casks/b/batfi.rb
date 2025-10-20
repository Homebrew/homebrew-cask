cask "batfi" do
  version "3.0.1"
  sha256 :no_check

  url "https://files.micropixels.software/batfi/BatFi-latest.zip"
  name "BatFi"
  desc "App for managing battery charging"
  homepage "https://micropixels.software/batfi"

  livecheck do
    url "https://files.micropixels.software/batfi/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "BatFi.app"

  uninstall quit: "software.micropixels.BatFi"

  zap trash: [
    "~/Library/Application Support/BatFi",
    "~/Library/Preferences/software.micropixels.BatFi.plist",
  ]
end
