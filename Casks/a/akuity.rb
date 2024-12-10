cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.19.0"
  sha256 arm:   "409c211e87c5f607ffd82d11d80a8a1a67775d2bb8198f57bce35518ddd4bed6",
         intel: "bfee2295dfa2e0f75e50b73c7f1f54576c0af81feb09d2a79b35edc5841e93e7"

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
