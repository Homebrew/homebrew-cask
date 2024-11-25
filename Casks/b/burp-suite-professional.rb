cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.10.2"
  sha256 arm:   "af5bbb343eee907f49f79d94a59aa9c45d27831c50497b58ab7f47defcec2ebb",
         intel: "6e8af441e3305a22c67799066b13b768e1ac234b3f502f43a3fbafa056098053"

  url "https://portswigger-cdn.net/burp/releases/download?product=pro&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json.dig("ResultSet", "Results")
      next if all_versions.blank?

      all_versions.filter_map do |item|
        item["version"] if
              item["releaseChannels"]&.include?("Stable") &&
              item["categories"]&.include?("Professional") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
