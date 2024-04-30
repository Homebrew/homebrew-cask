cask "postman@canary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.24.24-canary240429-0810"
  sha256 arm:   "7d2a1593c2ba1f140337eb7fb94686ba214445ae3e01fb4fa53d0fa4efa68697",
         intel: "d10c6d6069a2c6b0b090a140577b498c2dc3f918e780d3f757458358c5175590"

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman Canary"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  # This is a workaround to a slow-to-update livecheck. It uses the in-app
  # update check link and queries the available versions for a generic major
  # version. We cannot use #{version} as the URL does not exist if #{version}
  # is the latest version available.
  livecheck do
    url "https://dl.pstmn.io/update/status?currentVersion=#{version.major}.0.0&platform=osx_arm64&channel=canary"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PostmanCanary.app"

  zap trash: "~/Library/Application Support/PostmanCanary"
end
