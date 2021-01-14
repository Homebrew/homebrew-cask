cask "accurics" do
  version "1.0.14"
  sha256 "7007a2f08f6e64fb69c0456193d8e8778868a6edaa77f688ef510afe75f751be"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg"
  appcast "https://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          must_contain: version
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.accurics.com/"

  binary "accurics"

  zap trash: "~/.accurics/"
end
