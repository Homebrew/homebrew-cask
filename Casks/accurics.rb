cask "accurics" do
  version "1.0.26"
  sha256 "d21eca9b3421855ddd28c90cd1055c5568fd2ed21ee139780a1215fc581a1989"

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
