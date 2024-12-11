cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.19.1"
  sha256 arm:   "fe99fb2e79bf3e29cb2d12e3db6845a919626bb13f642c5e94d878712b4bb061",
         intel: "1eab83d576f8ba46da42c1a63104cbc79e7d97e4bd7d47a624ae291ca3b39c27"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
