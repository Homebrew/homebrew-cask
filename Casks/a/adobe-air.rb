cask "adobe-air" do
  version "51.2.1.5"
  sha256 "a41b8dbdf5f895dce2ac10dfb32afc9b1c37007c7f54aae59dc5f345ac19e041"

  url "https://airsdk.harman.com/assets/downloads/#{version}/AdobeAIR.dmg"
  name "Adobe AIR"
  desc "Framework used in the development of applications and games"
  homepage "https://airsdk.harman.com/"

  # The download page is rendered using JavaScript with the download links
  # obtained from https://airsdk.harman.com/main.<number>.js
  # Since the <number> is not fixed in the filename, the current JavaScript
  # file needs to be extracted from the download page.
  livecheck do
    url :homepage
    regex(%r{/v?(\d+(?:\.\d+)+)/AdobeAIR\.dmg}i)
    strategy :page_match do |page, regex|
      js_file = page[/src=["']?(main.+\.js)\??["' >]/i, 1]
      next if js_file.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://airsdk.harman.com/#{js_file}")
      version_page[:content]&.scan(regex)&.map { |match| match[0] }
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
      rmdir: "~/Library/Application Support/Adobe"
end
