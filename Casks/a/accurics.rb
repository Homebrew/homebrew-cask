cask "accurics" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.49"
  sha256 arm:   "e1a02fa396c3381d1f4b5fddb3201d33665d92105761efb5e8a32a375ee1a4f6",
         intel: "4cfe4ca227a766e038c2e37f28edf778f419826846e823e9e703723a6a8cec74"

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
