cask "accurics" do
  version "1.0.28"
  sha256 "d35e4a7e421a423ae748be9b6b0fc24f687efdb8952ca65cd7093cd47ce31a98"

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
