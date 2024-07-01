# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "lazycat" do
  version "v1.0.96"

  on_arm do
    sha256 "8bfb3c6c64d62ee2fb91778e7db3cf8fb0ce90efa4f579aac10521c20ae9cb48"

    url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_#{version}_arm64.dmg"
  end
  on_arm do
    livecheck do
      url "https://dl.lazycat.cloud/client/desktop/lzc-client-desktop_arm64.dmg.metadata.json"
      strategy :json do |json|
        json["buildVersion"]
      end
    end
  end
  on_intel do
    sha256 "3f00f3bbb8d86c86424e4ec2b9d2d0194ec0c63eceae300ed5b3bce1e9349a71"

    url "https://dl.lazycat.cloud/client/desktop/stable/lzc-client-desktop_#{version}_x64.dmg"
  end
  on_intel do
    livecheck do
      url "https://dl.lazycat.cloud/client/desktop/lzc-client-desktop_x64.dmg.metadata.json"
      strategy :json do |json|
        json["buildVersion"]
      end
    end
  end

  name "LazyCat"
  desc "懒猫微服客户端"
  homepage "https://lazycat.cloud/"

  depends_on macos: ">= :catalina" # >=10.15

  app "懒猫微服.app"
end
