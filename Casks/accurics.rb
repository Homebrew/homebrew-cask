cask "accurics" do
  version "1.0.4"
  sha256 "5d12405d22049206ca19f45aef9376ae3095f3b9bb5c13b4b7c7c5f7fa61396c"

  url "https://downloads.accurics.com/cli/#{version}/accurics-cli.dmg"
  appcast "https://downloads.accurics.com/cli/#{version}/accurics-cli.yml",
          must_contain: version
  name "Accurics CLI"
  homepage "https://www.accurics.com/"

  binary "accurics"

  zap trash: "~/.accurics/"
end
