cask "postman@canary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "11.2.14-canary240621-0734"
  sha256 :no_check

  url "https://dl.pstmn.io/download/channel/canary/#{arch}",
      verified: "dl.pstmn.io/download/channel/canary/"
  name "Postman Canary"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/download/channel/canary/#{arch}"
    regex(/PostmanCanary(?:%20|[._-])v?(\d+(?:\.\d+)+[._-]canary[._-]?(\d+(?:[.-]\d+)*))/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PostmanCanary.app"

  zap trash: "~/Library/Application Support/PostmanCanary"
end
