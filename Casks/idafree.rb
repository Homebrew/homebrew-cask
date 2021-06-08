cask "idafree" do
  version "7.6"
  sha256 "d56949e39ec988dfd4a5793cbb0bc90341fb50a39d4b304e3c197629496d541b"

  url "https://out7.hex-rays.com/files/idafree#{version.no_dots}_mac.app.zip"
  name "IDA Free"
  homepage "https://www.hex-rays.com/index.shtml"

  installer script: {
    executable: "idafree#{version.no_dots}_mac.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--installpassword", ""],
  }

  uninstall script: {
    executable: "/Applications/IDA Freeware #{version}/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
