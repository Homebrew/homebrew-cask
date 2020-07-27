cask "idafree" do
  version "7.0"
  sha256 "77a4557e7104dc9c7e3957558ce4879182e09f3739f870e4e6e82795dc56b257"

  url "https://out7.hex-rays.com/files/idafree#{version.no_dots}_mac.zip"
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
