cask "idafree" do
  arch = Hardware::CPU.intel? ? "idafree" : "arm_idafree"

  version "7.7"

  if Hardware::CPU.intel?
    sha256 "1141a984567f3eab8bda2b372a15d03757fa06919f67e007e1a948d52acc8377"
  else
    sha256 "161b7ef7b7415e03dd95e401c32173b6711074b632d46de8a89115999ecd83a6"
  end

  url "https://out7.hex-rays.com/files/#{arch}#{version.no_dots}_mac.app.zip"
  name "IDA Free"
  desc "Binary code analysis tool"
  homepage "https://hex-rays.com/ida-free/"

  livecheck do
    url "https://hex-rays.com/download-center/"
    regex(/>\s*IDA\s*v?(\d+(?:\.\d+)+)\s+Free\s*</i)
  end

  installer script: {
    executable: "#{arch}#{version.no_dots}_mac.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--installpassword", ""],
  }

  uninstall script: {
    executable: "/Applications/IDA Freeware #{version}/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
