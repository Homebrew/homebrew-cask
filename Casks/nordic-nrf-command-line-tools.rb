cask "nordic-nrf-command-line-tools" do
  version "10.22.0"
  sha256 "c575d53aa3f140afb63832618604c9d16de857f3471ee09ba6e8e6273e65986d"

  url "https://nsscprodmedia.blob.core.windows.net/prod/software-and-other-downloads/desktop-software/nrf-command-line-tools/sw/versions-#{version.major}-x-x/#{version.dots_to_hyphens}/nrf-command-line-tools-#{version}-darwin.dmg",
      verified: "nsscprodmedia.blob.core.windows.net/"
  name "nRF Command Line Tools"
  desc "Command-line tools for Nordic nRF Semiconductors"
  homepage "https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools"

  livecheck do
    url "https://www.nordicsemi.com/Products/Development-tools/nRF-Command-Line-Tools/Download"
    regex(/nRF[._-]Command[._-]Line[._-]Tools[._-]v?(\d+(?:[._]\d+)+)[._-]Darwin\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on cask: "segger-jlink"

  pkg ".nRF-Command-Line-Tools-#{version}-Darwin.pkg"

  uninstall pkgutil: "com.Nordic Semiconductor.nRF-Command-Line-Tools.*"

  # No zap stanza required
end
