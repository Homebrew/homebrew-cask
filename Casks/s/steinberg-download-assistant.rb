cask "steinberg-download-assistant" do
  version "1.38.1,b648-7cf9f7b9-ccb0-44e1-b16e-1f1c53be881b"
  sha256 "173a87efac3b0268a6e690bc2fd73cd9b04df1635831b3c1e39de372a0575953"

  url "https://download.steinberg.net/automated_updates/sda-selfupdate/releases/absolute-downloader-#{version.csv.first}-#{version.csv.second}/mac/Steinberg_Download_Assistant_#{version.csv.first}_Installer_mac.dmg"
  name "Steinberg Download Assistant"
  desc "Tool to download files for Steinberg products"
  homepage "https://o.steinberg.net/en/support/content_and_accessories/steinberg_download_assistant.html"

  livecheck do
    url "https://r.mb.steinberg.net/sda-latest-mac"
    regex(%r{/absolute-downloader-v?(\d+(?:\.\d+)+)-([^/]+)/}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  installer manual: "Steinberg Download Assistant Setup.app"

  uninstall launchctl: [
              "application.net.steinberg.elicenser.SteinbergDownloadAssistant*",
              "com.steinberg.SilentInstallHelper",
            ],
            quit:      "net.steinberg.elicenser.SteinbergDownloadAssistant",
            pkgutil:   "com.steinberg.SteinbergInstallAssistant",
            delete:    "/Application/Steinberg Download Assistant"

  zap trash: [
    "~/Library/Application Support/Steinberg/Download Assistant",
    "~/Library/Logs/Steinberg/Download Assistant",
    "~/Library/Saved Application State/net.steinberg.eLicenser.installer.SteinbergDownloadAssistant.savedState",
    "~/Library/Saved Application State/net.steinberg.elicenser.SteinbergDownloadAssistant.savedState",
  ]
end
