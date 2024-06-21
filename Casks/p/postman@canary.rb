cask "postman@canary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "11.2.14-canary240621-0734"
  sha256 arm:   "a5630251d8463d567a3ea3da6b6d6bec5d47de47d594e9d64924aff0bca4bd4f",
         intel: "907567df8bd91b3a9cce068779ff6746d089e578409169865cb89f341393019e"

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
