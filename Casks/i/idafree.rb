cask "idafree" do
  arch arm: "arm_"

  version "8.3"
  sha256 arm:   "52fd0726640f3f5697e657d074f363c147a97b46781955339fb63fef547c8992",
         intel: "e1c679dbf6518c4b25d86d84572aa215c998281d4f61b99affa65a9583c0ee11"

  url "https://out7.hex-rays.com/files/#{arch}idafree#{version.no_dots}_mac.app.zip"
  name "IDA Free"
  desc "Binary code analysis tool"
  homepage "https://hex-rays.com/ida-free/"

  livecheck do
    url :homepage
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

  zap trash: "~/Library/Saved Application State/com.hexrays.ida64.savedState"
end
