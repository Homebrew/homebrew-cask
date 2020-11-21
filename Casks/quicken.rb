cask "quicken" do
  version "6.0.1,600.37045.100"
  sha256 "f67e9850ecd0bf8f34fcd190f8a0922bde712a69fab9d4f28fea5ac55f374769"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.after_comma}/Quicken-#{version.after_comma}.zip"
  appcast "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
  name "Quicken"
  desc "Personal finance mananger"
  homepage "https://www.quicken.com/mac"

  depends_on macos: ">= :el_capitan"

  app "Quicken.app"

  zap trash: [
    "~/Library/Preferences/com.quicken.Quicken.plist",
    "~/Library/Application Support/Quicken",
  ]
end
