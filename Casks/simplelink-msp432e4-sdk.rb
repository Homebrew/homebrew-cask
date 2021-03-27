cask "simplelink-msp432e4-sdk" do
  version "4.20.00.12"
  sha256 "acb3a9d1935d17e7c9b47b64913aa832a764b82b0d44430ea43487a235bb4e95"

  url "https://software-dl.ti.com/simplelink/esd/simplelink_msp432e4_sdk/#{version}/simplelink_msp432e4_sdk_#{version.dots_to_underscores}.app.zip"
  name "SimpleLink MSP432P4 High-precision ADC MCU Software Development Kit"
  desc "Software development kit for MSP432E4 micro-controllers"
  homepage "https://www.ti.com/tool/SIMPLELINK-MSP432-SDK"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/simplelink_msp432e4_sdk_(?:\d+(?:_\d+)*)\.app\.zip}i)
  end

  installer script: {
    executable: "simplelink_msp432e4_sdk_#{version.dots_to_underscores}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--prefix", "/Applications/TI"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/TI/simplelink_msp432e4_sdk_#{version.dots_to_underscores}/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
