cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.30.0-rl.2.0.20260527102109-5392d52366a4"
  sha256 arm:          "45221085d046265cf1cd773fc52305ea95798a527fec3b828880cbb7830f6ece",
         intel:        "00336ff342b94d7e119b885f0d0aa8e32d9a984485f4fa2897f7f1ae9db58b50",
         arm64_linux:  "1a496bc6ee3b3d8c0798148801416f641dac7af3a00f41e53eba2643b1e2cab5",
         x86_64_linux: "9e6a9d538c2bdc626b2829bc789eac5e13baa198f6c3fb43bf25630a26270b67"

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
