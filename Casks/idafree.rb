cask "idafree" do
  arch = Hardware::CPU.intel? ? "idafree" : "arm_idafree"

  version "7.7"

  if Hardware::CPU.intel?
    sha256 "def16362e338ef3ace4ed91cb1bfb2f1ffef220a9988e32d3468c17736c1f851"
  else
    sha256 "1594c4dc719d888d4c1cb5da5faf45793d5923b5a8830346ed785f4abab0cc2b"
  end

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
