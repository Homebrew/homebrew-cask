cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.2.3"
  sha256 arm:   "053b3ab8fbd0bd8c21592f3ff286d706089055ec4b4d0c474cf0ab1f52123110",
         intel: "d450bdfb4eb274df4ad65dc4f48ca6e6607d72bc637d07520ccdcd6c9ed91f2a"

  url "https://portswigger.net/burp/releases/download?product=pro&version=#{version}&type=#{arch}"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
      next if all_versions.blank?

      all_versions.map do |item|
        item["version"] if
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Professional") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end.compact
    end
  end

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
