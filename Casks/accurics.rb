cask "accurics" do
  version "1.0.13"
  sha256 "ea4a5637588133813afd0c0b2e6f8f9b3fe3fce7425477ef5702fd808a0b81e4"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg"
  appcast "https://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          must_contain: version
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.accurics.com/"

  binary "accurics"

  zap trash: "~/.accurics/"
end
