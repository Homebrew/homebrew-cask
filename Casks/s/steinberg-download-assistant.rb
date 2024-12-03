cask "steinberg-download-assistant" do
  version "1.36.4,b373-64e7403f-c9c1-47cf-9540-521692d2a7a5"
  sha256 "515e8151b0f9232d6c4efff1aba3b67d46fe0b19e2e744699cd639452fb8a7a3"

  url "https://download.steinberg.net/automated_updates/sda-selfupdate/releases/absolute-downloader-#{version.csv.first}-#{version.csv.second}/mac/Steinberg_Download_Assistant_#{version.csv.first}_Installer_mac.dmg"
  name "Steinberg Download Assistant"
  desc "Tool to download files for Steinberg products"
  homepage "https://o.steinberg.net/en/support/content_and_accessories/steinberg_download_assistant.html"

  livecheck do
    url "https://www.steinberg.net/sda-mac"
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
