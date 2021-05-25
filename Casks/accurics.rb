cask "accurics" do
  version "1.0.18"
  sha256 "d4f0f9446a28d5d8cd091546ac11bc1002897cdf62d8b80b15d12ef24fedf55b"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg",
      user_agent: :fake
  appcast "https://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          must_contain: version
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://downloads.accurics.com/cli/"

  binary "accurics"

  zap trash: "~/.accurics/"
end
