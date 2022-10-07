cask "idafree" do
  arch arm: "arm_idafree", intel: "idafree"

  version "8.1"
  sha256 arm:   "962c595b6b1b10f5710cc3d5e298179f1c5a5b5971893c09ff84ed8df9a7c6ec",
         intel: "3ac543a77f5d3b03a1285b7ba4f5dd3dafa603bad9a99a0a1ab55bc7920cfb27"

  url "https://out7.hex-rays.com/files/#{arch}#{version.no_dots}_mac.app.zip"
  name "IDA Free"
  desc "Binary code analysis tool"
  homepage "https://hex-rays.com/ida-free/"

  livecheck do
    url "https://hex-rays.com/ida-free/"
    regex(/>.*?IDA\s*v?(\d+(?:\.\d+)+).*?</i)
  end

  depends_on macos: ">= :catalina"

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
