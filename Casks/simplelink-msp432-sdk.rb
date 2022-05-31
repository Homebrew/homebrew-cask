cask "simplelink-msp432-sdk" do
  version "4.20.00.12,e4,MD-DhlqgBxRMh"
  sha256 "acb3a9d1935d17e7c9b47b64913aa832a764b82b0d44430ea43487a235bb4e95"

  url "https://dr-download.ti.com/software-development/software-development-kit-sdk/#{version.csv.third}/#{version.csv.first}/simplelink_msp432#{version.csv.second}_sdk_#{version.csv.first.dots_to_underscores}.app.zip"
  name "SimpleLink MSP432 High-precision ADC MCU Software Development Kit"
  desc "Software development kit for MSP432 micro-controllers"
  homepage "https://www.ti.com/tool/SIMPLELINK-MSP432-SDK"

  livecheck do
    url :homepage
    regex(%r{href=.*?/([^/]+)/(\d+(?:\.\d+)+)/simplelink_msp432([a-z\d]+)_sdk_(?:\d+(?:_\d+)+)\.app\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second},#{match.third},#{match.first}" }
    end
  end

  installer script: {
    executable: "simplelink_msp432#{version.csv.second}_sdk_#{version.csv.first.dots_to_underscores}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--prefix", "/Applications/TI"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/TI/simplelink_msp432#{version.csv.second}_sdk_#{version.csv.first.dots_to_underscores}/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
