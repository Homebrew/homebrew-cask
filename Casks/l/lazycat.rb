cask "lazycat" do
  arch arm: "arm64", intel: "x64"

  version "1.0.117"
  sha256  arm:   "98cd52eab01478a7beef8df1b2ea74c6a87f4b78c0922eb730b6429492ab7ead",
          intel: "bc9e53856467e6c2295adf7f3bacdcae21af57dc1b91d134efc79a9ffe938d70"

  url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_v#{version}_#{arch}.dmg"
  name "LazyCat"
  desc "Client for LazyCat hardware"
  homepage "https://lazycat.cloud/"

  livecheck do
    url "https://dl.lazycat.cloud/client/desktop/lzc-client-desktop_#{arch}.dmg.metadata.json"
    strategy :json do |json|
      json["buildVersion"].delete_prefix("v")
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
