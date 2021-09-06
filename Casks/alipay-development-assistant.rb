cask "alipay-development-assistant" do
  version "1.0.7"
  sha256 :no_check

  url "https://ideservice.alipay.com/ide/getPluginUrl.htm?clientType=assistant&platform=mac&channelType=WEB"
  name "Alipay Development Assistant"
  desc "Alipay's open platform development assistant"
  homepage "https://opendocs.alipay.com/open/291/introduce"

  app "支付宝开放平台开发助手.app"

  zap trash: [
    "~/Library/Application Support/alipaykeytool",
    "~/Library/Preferences/com.alipay.alipayleytool.plist",
    "~/Library/Saved Application State/com.alipay.alipayleytool.savedState",
  ]
end
