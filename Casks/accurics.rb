cask "accurics" do
  version "1.0.24"
  sha256 "e74ccff8eef37acd253c268edfc36ef3862d8de9351222dfbdbfd12c5d3f4c34"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg",
      user_agent: :fake
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.accurics.com/"

  livecheck do
    url "https://downloads.accurics.com/cli/latest/accurics-cli.yml"
    strategy :electron_builder
  end

  binary "accurics"

  zap trash: "~/.accurics/"
end
