cask "steinberg-download-assistant" do
  version "1.40.1,b1287-424e60f3-94d9-4868-9d78-9a4e59e7829a"
  sha256 "48d1da57bba4f28141ec58333958233e3a0a2bdbcf7c5bea262b6e9ae76870db"

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
  depends_on :macos

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
