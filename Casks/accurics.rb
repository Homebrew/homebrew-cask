cask "accurics" do
  version "1.0.46"
  sha256 "03ca8f77ddf2358204f1bf77aca9c9d67f70c317e0215661f5a8acd65a2b434d"

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
