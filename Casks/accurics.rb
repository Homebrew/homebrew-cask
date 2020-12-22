cask "accurics" do
  version "1.0.12"
  sha256 "35927c463f404e743c686cf042aafd2b59d3ac41dccc96055dafd996e3cc8438"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg"
  appcast "https://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          must_contain: version
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.accurics.com/"

  binary "accurics"

  zap trash: "~/.accurics/"
end
