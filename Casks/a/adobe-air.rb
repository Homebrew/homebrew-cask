cask "adobe-air" do
  version "51.1.1.3"
  sha256 "fe984f651ebe2a2713983e6001ab8d3e1d5b6a23a7670065cc646eb670145112"

  url "https://airsdk.harman.com/assets/downloads/#{version}/AdobeAIR.dmg"
  name "Adobe AIR"
  desc "Framework used in the development of applications and games"
  homepage "https://airsdk.harman.com/"

  # The download page is rendered using JavaScript with the download links
  # obtained from https://airsdk.harman.com/main.<number>.js
  # Since the <number> is not fixed in the filename, the current JavaScript
  # file needs to be extracted from the download page.
  livecheck do
    url "https://airsdk.harman.com/"
    regex(%r{/v?(\d+(?:\.\d+)+)/AdobeAIR\.dmg}i)
    strategy :page_match do |page, regex|
      js_file = page[/src=["']?(main.+\.js)\??["' >]/i, 1]
      version_page = Homebrew::Livecheck::Strategy.page_content("https://airsdk.harman.com/#{js_file}")
      version_page[:content].scan(regex).flatten
    end
  end

  installer script: {
    executable: "Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer",
    args:       ["-silent"],
    sudo:       true,
  }

  uninstall script: {
              executable: "Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer",
              args:       ["-uninstall"],
              sudo:       true,
            },
            rmdir:  [
              "/Applications/Adobe",
              "/Applications/Adobe/Flash Player",
              "/Applications/Adobe/Flash Player/AddIns",
            ]

  zap trash: [
        "~/Library/Application Support/Adobe/AIR",
        "~/Library/Caches/com.adobe.air.ApplicationInstaller",
      ],
      rmdir: "~/Library/Application Support/Adobe/"
end
