cask "idafree" do
  version "7.6"

  if Hardware::CPU.intel?
    sha256 "d56949e39ec988dfd4a5793cbb0bc90341fb50a39d4b304e3c197629496d541b"

    url "https://out7.hex-rays.com/files/idafree#{version.no_dots}_mac.app.zip"
  else
    sha256 "5ab07c6a2edc257717c4c8d26eaa9b4655a14d322c8360216ef8b18ec9b04b7e"

    url "https://out7.hex-rays.com/files/arm_idafree#{version.no_dots}_mac.app.zip"
  end

  name "IDA Free"
  desc "Binary code analysis tool"
  homepage "https://hex-rays.com/ida-free/"

  livecheck do
    url "https://hex-rays.com/download-center/"
    regex(/>\s*IDA\s*v?(\d+(?:\.\d+)+)\s+Free\s*</i)
  end

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
