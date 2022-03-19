cask "idafree" do
  arch = Hardware::CPU.intel? ? "idafree" : "arm_idafree"

  version "7.7"

  if Hardware::CPU.intel?
    sha256 "75f623b3f438aac5d5207fc48fee14db262db6dcf0393d3f636d1117f480f337"
  else
    sha256 "1594c4dc719d888d4c1cb5da5faf45793d5923b5a8830346ed785f4abab0cc2b"
  end

  url "https://out7.hex-rays.com/files/#{arch}#{version.no_dots}_mac.app.zip"
  name "IDA Free"
  desc "Binary code analysis tool"
  homepage "https://hex-rays.com/ida-free/"

  livecheck do
    url "https://hex-rays.com/download-center/"
    regex(/>\s*IDA\s*v?(\d+(?:\.\d+)+)\s+Free\s*</i)
  end

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
