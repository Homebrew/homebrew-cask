cask "idafree" do
  arch arm: "arm_"

  version "8.4.240527"
  sha256 arm:   "db5c0184a84ee2ed4fd534b3c2d657fbc8b27c79ccfae8921e3e8faa64f9d923",
         intel: "e47b0513709fffc3616ca5319ca82dcbc03b705b5950b18c6252aa05ff41b9a9"

  url "https://out7.hex-rays.com/files/#{arch}idafree#{version.major_minor.no_dots}_mac.app.zip"
  name "IDA Free"
  desc "Binary code analysis tool"
  homepage "https://hex-rays.com/ida-free/"

  livecheck do
    url "https://hex-rays.com/products/ida/news/"
    regex(/>\s*IDA\s*v?(\d+(?:\.\d+)+)[^<]*?</i)
  end

  depends_on macos: ">= :catalina"

  installer script: {
    executable: "#{arch}idafree#{version.major_minor.no_dots}_mac.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--installpassword", ""],
  }

  uninstall script: {
    executable: "/Applications/IDA Freeware #{version.major_minor}/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  zap trash: "~/Library/Saved Application State/com.hexrays.ida64.savedState"
end
