cask "accurics" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.53"
  sha256 arm:   "8d1b215ef0eeb28a7f8f2f77e36514aeeaa0145757cec32db414e1949b72ab0a",
         intel: "8d714ed9518888f9b672bfd8de6103fa46f75c9a5dd37651560f3956f55258ad"

  url "https://www.tenable.com/downloads/api/v2/pages/cloud-security/files/accurics-cli_#{version}_macos_#{arch}.dmg"
  name "Accurics CLI"
  desc "Security and compliance for Infrastructure as Code"
  homepage "https://www.tenable.com/products/tenable-cs"

  livecheck do
    url "https://www.tenable.com/downloads/api/v2/pages/cloud-security"
    regex(/Accurics\sv?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("releases", "latest")&.keys&.map do |item|
        item.match(regex) { |match| match[1] }
      end
    end
  end

  binary "accurics"

  zap trash: "~/.accurics/"
end
