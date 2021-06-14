cask "accurics" do
  version "1.0.19"
  sha256 "24826e0d048d09250f35643cdbc5070700632ac975d1b80631ca60ffcdcdb07d"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg",
      user_agent: :fake
  appcast "https://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          must_contain: version
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.accurics.com/"

  binary "accurics"

  zap trash: "~/.accurics/"
end
