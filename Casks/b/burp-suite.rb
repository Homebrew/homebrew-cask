cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.9.3"
  sha256 arm:   "276378148a1ca76355d0fc12e9766405ee611fc6f745ffa43b76602e458ad315",
         intel: "32396b46583dcbefb6d3532818aae7a0f25fa2359e2fe015e6820cfaecbfecfa"

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
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Community") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
