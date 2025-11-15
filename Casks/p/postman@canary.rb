cask "postman@canary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "11.2.14-canary240621-0734"
  sha256 :no_check

  url "https://dl.pstmn.io/download/channel/canary/#{arch}",
      verified: "dl.pstmn.io/download/channel/canary/"
  name "Postman Canary"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  disable! date: "2025-11-15", because: :no_longer_available

  auto_updates true

  app "PostmanCanary.app"

  zap trash: "~/Library/Application Support/PostmanCanary"
end
