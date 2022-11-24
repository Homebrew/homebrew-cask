cask "binocs" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.4"
  sha256 arm:   "32736551ea212c726f408fa790c7b205b7c0dfeb64412a274d4f2c39384acd2c",
         intel: "5795d10fe5e6247e6875ec2b064d963079116719709c4f03c5ccd4fd9b6f22b0"

  url "https://download.binocs.sh/binocs_#{version}_darwin_#{arch}.gz"
  name "Binocs"
  desc "CLI-first uptime and performance monitoring tool for websites, apps and APIs"
  homepage "https://binocs.sh/"

  livecheck do
    url "https://download.binocs.sh/VERSION"
    regex(/v(\d+(?:\.\d+)+)/)
  end

  binary "binocs"

  zap trash: "~/.binocs"
end
