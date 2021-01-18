cask "accurics" do
  version "1.0.15"
  sha256 "0aebd800e289c74f63f02cedd1bec557cc28f1e2815e505553213d104704863e"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg"
  appcast "https://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          must_contain: version
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.accurics.com/"

  binary "accurics"

  zap trash: "~/.accurics/"
end
