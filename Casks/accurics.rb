cask "accurics" do
  version "1.0.11"
  sha256 "953ac9f9d029782c7208bed4e19429e30bcd233b70d0f7dfa01cbd273bc5e848"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg"
  appcast "https://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          must_contain: version
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.accurics.com/"

  binary "accurics"

  zap trash: "~/.accurics/"
end
