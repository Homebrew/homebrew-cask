cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250918141036-9f4b87100cce"
  sha256 arm:          "0b85a50402578ddf14d81a686f1bd8b5979f253c7b7d49f88c625354e9861744",
         intel:        "c3f65247aa37b2eb33f2157fb633f7737503bb9d5e4f34976da4a7ce65d38ab5",
         arm64_linux:  "a9ee29a81750746dae393655836adc27f7fa77bbd04ba10d60a6eabf3c745bf8",
         x86_64_linux: "5b549c3789ac0f04b23d721993308cd6414ced0d3c2ce41bc1b0fe0b09d9cc8c"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
