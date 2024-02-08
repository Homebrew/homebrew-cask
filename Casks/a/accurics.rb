cask "accurics" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.51"
  sha256 arm:   "212a38d7e95cf245cf0ea845688047daa671707564d445ad9ec332ea61dc21a0",
         intel: "b0b61ca949e81aebf7be225e40d789ff8eea3667c2d3449271468943bf84a745"

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
