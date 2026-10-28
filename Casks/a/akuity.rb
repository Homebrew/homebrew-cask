cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261028144206-7b557d59ef1a"
  sha256 arm:          "b9c14e5324c275a5cc27986c92129f0474b9189779f338194e00567d427c27ea",
         intel:        "dc7c742f40afa3771453a6b6bc6b529d7e7b18ecbb6739750381c80348a6c1b0",
         arm64_linux:  "3cb0fc2c9cb9d7f81508f3e9edcac305a93613a177bdc8a50c10b23dfb0bd710",
         x86_64_linux: "490a7fa89096ec4d5bf5b21798f7ec16eb6575baffc8631ffc9d004f7b1f749b"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
