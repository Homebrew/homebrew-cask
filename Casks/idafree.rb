cask "idafree" do
  arch arm: "arm_idafree", intel: "idafree"

  version "8.0"
  sha256 arm:   "afc2093e26521af320d7f4515bd618fb5c9132965981558e874fc375e0554f48",
         intel: "70137e02202e218034d2eb6e6e23aa41728b022186a71b987c3754aa20219357"

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
