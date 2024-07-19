cask "jmstoolbox" do
  version "6.6.0"
  sha256 "98dfd91cd37295a8f1387e2cf742b2e8b3a9f54f0aceed1a9c4995e264002fa5"

  url "https://github.com/jmstoolbox/jmstoolbox/releases/download/v#{version}/jmstoolbox-#{version}-macosx.cocoa.aarch64.tar.gz"
  name "JMSToolBox"
  desc "Free universal JMS client"
  homepage "https://github.com/jmstoolbox/jmstoolbox"

  app "JMSToolBox.app"

  postflight do
    system("xattr -cr \"/Applications/JMSToolBox.app\"")
  end

  zap trash: [
    "~/.jtb"
  ]
end
