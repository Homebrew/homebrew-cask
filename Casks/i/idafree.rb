cask "idafree" do
  arch arm: "arm_"

  version "8.4.240527"
  sha256 arm:   "dec15875d871a398088a05320ac45e1971940de279abb8e2cd57054833da18f6",
         intel: "c4cf8b35d02b217351cad738c8aadaf0bb17aacc3e7421e6b420c5fe2451e6f5"

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
