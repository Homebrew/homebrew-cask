cask "dashlane" do
  version "6.2140.0.50277"
  sha256 "ca0d462d311f8c6ca134ed24bf64774f05cedfebadd99b915f58c650210f1dfc"

  url "https://d3mfqat9ni8wb5.cloudfront.net/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg",
      verified: "d3mfqat9ni8wb5.cloudfront.net/releases/"
  name "Dashlane"
  desc "Password manager and digital wallet application"
  homepage "https://www.dashlane.com/"

  livecheck do
    url "https://ws1.dashlane.com/5/binaries/query?format=xml&os=OS_X_10_14_5&target=archive&platform=server_osx"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Dashlane.app"

  uninstall launchctl: "com.dashlane.DashlaneAgent"

  zap trash: [
    "~/Library/Application Scripts/com.dashlane.Dashlane.SafariExtensionDMG",
    "~/Library/Application Support/Dashlane",
    "~/Library/Application Support/com.dashlane.Dashlane*",
    "~/Library/Caches/com.dashlane.Dashlane*",
    "~/Library/Containers/com.dashlane.Dashlane.SafariExtensionDMG",
    "~/Library/Preferences/com.dashlane.Dashlane*.plist",
  ]
end
