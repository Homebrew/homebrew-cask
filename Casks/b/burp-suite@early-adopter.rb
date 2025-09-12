cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.9.1"
  sha256 arm:   "fea7377dccf4bb34ff75877b309c8ec2f9d9a16fb790d1e1f50ac8744de8452a",
         intel: "3b4c3f4ac23ec8bcd10def833efc0595b853914e0e87a61c70b4556559243094"

  url "https://portswigger-cdn.net/burp/releases/download?product=community&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json.dig("ResultSet", "Results")
      next if all_versions.blank?

      all_versions.filter_map do |item|
        item["version"] if
              item["releaseChannels"]&.include?("Early Adopter") &&
              item["categories"]&.include?("Community") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite"
  depends_on macos: ">= :catalina"

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
