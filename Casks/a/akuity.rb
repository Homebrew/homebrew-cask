cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260702172520-efc9e7749272"
  sha256 arm:          "1fe8f37a8bc40d900ed4884a47bf4fb0620c29a99c203fffee4cb790c7830319",
         intel:        "ddd50e348e26ba6eb78dc9771c01727ace7cc8a3ecb1d7216b99d5e5cb0d8f8c",
         arm64_linux:  "72d53dc5d88ada030c53b69d93829189be852ced2f3b205521951a333c902e78",
         x86_64_linux: "5c744b26854c0de182ee1de1ec6063851e1ff9d851e45df607e8c68d30868ccc"

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
