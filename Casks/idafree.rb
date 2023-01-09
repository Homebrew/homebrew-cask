cask "idafree" do
  arch arm: "arm_"

  version "8.2"
  sha256 arm:   "08f10c8509056d04e21d79f04a5428441cd20dda275d8d20529bd08d7d7a9831",
         intel: "06c5dbb2093b09d27bcbe609dcd094b8c09a4b88bcb2909adb2b85b9ea68072d"

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
