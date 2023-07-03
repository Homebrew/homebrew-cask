cask "accurics" do
  version "1.0.48"
  sha256 "42faba775fa215ce0a55a297f08cd36d8a051e81484bed5e2d8c1e20ea36c195"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg",
      user_agent: :fake,
      verified:   "downloads.accurics.com/"
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.tenable.com/accurics"

  livecheck do
    url "https://downloads.accurics.com/cli/latest/accurics-cli.yml"
    strategy :electron_builder
  end

  binary "accurics"

  zap trash: "~/.accurics/"
end
