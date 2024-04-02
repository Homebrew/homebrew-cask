cask "idafree" do
  arch arm: "arm_"

  version "8.4.240320"
  sha256 arm:   "75b806df3a3be1268fa079fb3b1e0bfbaf3340ee2712f9a2eb33fca0e2c19c83",
         intel: "d5fb5cc4443c85a692503c59654b46910d92d5dcbd68c893c12c1ba8c0ea2729"

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
