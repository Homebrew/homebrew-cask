cask "idafree" do
  arch arm: "arm_idafree", intel: "idafree"

  version "8.0"
  sha256 arm:   "73354d6e4f2fae739943ac2b10b7d98e871ad8004c40e779a2f8b9ab0e40f194",
         intel: "51017c0047b5b06d6cd46c93a65583d4fbf086502de884ebcb8d72033b65e5a0"

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
