cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "1.2.8"
  sha256 arm:   "0f55e289b08b55f0b3fbe7d4cb8da3c1871b933e4622acfe3f4c11abcdea9a7e",
         intel: "d5c54cb0a5f3dadaa6d2991d54cc88d9f0a644d4b803bd702ff02e9161d72ca2"

  url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_v#{version}_#{arch}.dmg"
  name "LazyCat"
  desc "Client for LazyCat hardware"
  homepage "https://lazycat.cloud/"

  livecheck do
    url "https://dl.lazycat.cloud/client/desktop/lzc-client-desktop_#{arch}.dmg.metadata.json"
    strategy :json do |json|
      json["buildVersion"]&.delete_prefix("v")
    end
  end

  depends_on macos: ">= :catalina"

  app "懒猫微服.app"

  zap trash: [
    "~/lazycat",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cloud.lazycat.client.sfl*",
    "~/Library/Preferences/cloud.lazycat.client.plist",
    "~/Library/Saved Application State/cloud.lazycat.client.savedState",
  ]
end
