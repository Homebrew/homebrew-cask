cask "simplelink-msp432-sdk" do
  version "3.40.01.02"
  sha256 "8a059e9031f722ee1aa465287fbe8e08148c57ba3e191b32c1043fe9df6da322"

  url "https://software-dl.ti.com/simplelink/esd/simplelink_msp432_sdk/#{version}/simplelink_msp432p4_sdk_#{version.dots_to_underscores}.app.zip"
  name "SimpleLink MSP432P4 High-precision ADC MCU Software Development Kit"
  desc "Software development kit for MSP432P4 micro-controllers"
  homepage "https://www.ti.com/tool/SIMPLELINK-MSP432-SDK"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/simplelink_msp432p4_sdk_(?:\d+(?:_\d+)*)\.app\.zip}i)
  end

  installer script: {
    executable: "simplelink_msp432p4_sdk_#{version.dots_to_underscores}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--prefix", "/Applications/TI"],
    sudo:       true,
  }

  uninstall script: {
    executable: "/Applications/TI/simplelink_msp432p4_sdk_#{version.dots_to_underscores}/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
