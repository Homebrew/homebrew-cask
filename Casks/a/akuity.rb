cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.27.2-0.20260127214153-ce5e8b5208b2"
  sha256 arm:          "54521da6eae49a226e447527f4c1519f473972ff5cf550d4d2770b3995c1c61a",
         intel:        "fd666f64c30fc5242c0276001cca2aff53487e83f6913cb8a6238a3ed7a0fa18",
         arm64_linux:  "30d0733e47e2ae7c0cc30034bb76c939fda1565bdc7ee815cc488a8640e9cade",
         x86_64_linux: "2ab6b0b6cf77745a81bfda411e1ad7d6fbeaf82e397c3b496cdf56f4795ad717"

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
