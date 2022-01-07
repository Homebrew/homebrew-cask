cask "accurics" do
  version "1.0.31"
  sha256 "d2bf59d90016cf2fd01e03a929eb1a1cf2a4000164543cf1aab649e9ab0c68c7"

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
