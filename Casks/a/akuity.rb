cask "akuity" do
  arch arm: "arm64", intel: "amd64"

  version "0.22.1-0.20250429170904-aeb4bb5e5bdc"
  sha256 arm:   "c39db42febddf6ebcc0e4042a9868a12165697ca371908ecd82445d06ca23e7d",
         intel: "2806fef73daac1e0c218800ddc9a3bf65f2ffaf59ca299a599cb09bfd1e73230"

  url "https://dl.akuity.io/akuity-cli/v#{version}/darwin/#{arch}/akuity"
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
