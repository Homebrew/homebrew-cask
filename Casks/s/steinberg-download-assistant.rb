cask "steinberg-download-assistant" do
  version "1.37.3,b488-b6ccc039-4cfe-4f62-af46-bbc60e73654e"
  sha256 "3f03bc9d18297383d5fad4ded1f48ce4e65581cef4b0e71124ea4393c804461a"

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
