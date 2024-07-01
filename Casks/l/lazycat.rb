cask "lazycat" do
  arch arm: "arm64", intel: "x64"
  version "v1.0.96"

  sha256  arm:"8bfb3c6c64d62ee2fb91778e7db3cf8fb0ce90efa4f579aac10521c20ae9cb48",
          x64:"3f00f3bbb8d86c86424e4ec2b9d2d0194ec0c63eceae300ed5b3bce1e9349a71"

  url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_#{version}_#{arch}.dmg"

  livecheck do
    url "https://dl.lazycat.cloud/client/desktop/lzc-client-desktop_#{arch}.dmg.metadata.json"
    strategy :json do |json|
      json["buildVersion"]
    end
  end

  name "LazyCat"
  desc "懒猫微服客户端"
  homepage "https://lazycat.cloud/"

  depends_on macos: ">= :catalina" # >=10.15

  app "懒猫微服.app"
end
