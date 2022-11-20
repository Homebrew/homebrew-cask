cask "nrf-command-line-tools" do
  version "10.18.1"
  sha256 "e060ddf2044677f08c4f825ee31dfc8525c26f557abcb700758e1193bc556c9f"

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/#{version.dots_to_hyphens}/nrf-command-line-tools-#{version}-Darwin.dmg"
  name "nrf-command-line-tools"
  desc "Program and debug Nordic Semiconductor's nRF51, nRF52, nRF53 and nRF91"
  homepage "https://www.nordicsemi.com/Products/Development-tools/nRF-Command-Line-Tools/"

  livecheck do
    url "https://www.nordicsemi.com/Products/Development-tools/nRF-Command-Line-Tools/Download"
    strategy :page_match
    regex(/<div id="latest[^"]+">(\d+(?:\.\d+)+)/i)
  end

  pkg ".nRF-Command-Line-Tools-#{version}-Darwin.pkg",
      choices: [
        {
          "choiceIdentifier" => "PYNRFJPROGChoice",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]
  pkg ".JLink_MacOSX_V780c_universal.pkg"

  uninstall pkgutil: [
    "com.segger.pkg.JLink",
    "com.Nordic Semiconductor.nRF-Command-Line-Tools.SIGNING",
    "com.Nordic Semiconductor.nRF-Command-Line-Tools.PYNRFJPROG",
    "com.Nordic Semiconductor.nRF-Command-Line-Tools.NRFJPROG",
    "com.Nordic Semiconductor.nRF-Command-Line-Tools.MERGEHEX",
  ]
end
