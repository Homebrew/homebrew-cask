cask "accurics" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.50"
  sha256 arm:   "a818a45b6732f3c128b27eb56460a1fed11fc540ade6e7c287617080b9857511",
         intel: "371234de33c108ad28f4afb095c492a759f189a84598d2ae5145cb13d08bda2e"

  url "https://www.tenable.com/downloads/api/v2/pages/cloud-security/files/accurics-cli_#{version}_macos_#{arch}.dmg"
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.tenable.com/products/tenable-cs"

  livecheck do
    url "https://www.tenable.com/downloads/api/v2/pages/cloud-security"
    regex(/Accurics\sv?(\d+(?:\.\d+)+)/i)
    strategy :json do |json|
      json["releases"]["latest"].keys.map do |item|
        item.match(regex) { |match| match[1] }
      end
    end
  end

  binary "accurics"

  zap trash: "~/.accurics/"
end
