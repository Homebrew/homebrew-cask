cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.69"
  sha256 arm:          "4f0b0bdd8e07917be9ff656800229baf103d52b50d1eada94e8efda01f275736",
         intel:        "ac770499f23931eca7fea67e2400aaa1b1a17c6ff910cd31eb549dd26e70ecd0",
         arm64_linux:  "429136f934a6097133e4bacbc2c0e7a4bbc3f20231a3c8ad1f8d0a1c49c2689d",
         x86_64_linux: "83ab4f3b2d15903d53782038152ebe62c3a6eb12bb030e6baf3f0202e32f45f7"

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "tidelift"

  postflight_steps do
    set_permissions "tidelift", "+x"
  end

  # No zap stanza required
end
