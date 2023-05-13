cask "idafree" do
  arch arm: "arm_"

  version "8.2"
  sha256 arm:   "b77a56913d669240b53f1cfd2deec20c3f4b00cbf286bedae46172e11f06431a",
         intel: "60cd970c6aa01e14f488ef28c6017eca28bf447509f40176a1a982bb8e90f12a"

  url "https://out7.hex-rays.com/files/#{arch}idafree#{version.no_dots}_mac.app.zip"
  name "IDA Free"
  desc "Binary code analysis tool"
  homepage "https://hex-rays.com/ida-free/"

  livecheck do
    url "https://hex-rays.com/ida-free/"
    regex(/>.*?IDA\s*v?(\d+(?:\.\d+)+).*?</i)
  end

  depends_on macos: ">= :catalina"

  installer script: {
    executable: "#{arch}idafree#{version.no_dots}_mac.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--installpassword", ""],
  }

  uninstall script: {
    executable: "/Applications/IDA Freeware #{version}/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
