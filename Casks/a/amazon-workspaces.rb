cask "amazon-workspaces" do
  version "5.24.0"
  sha256 :no_check

  url "https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpaces.pkg",
      verified: "d2td7dqidlhjx7.cloudfront.net/prod/global/osx/"
  name "Amazon Workspaces"
  desc "Cloud native persistent desktop virtualization"
  homepage "https://clients.amazonworkspaces.com/"

  livecheck do
    url "https://docs.aws.amazon.com/workspaces/latest/userguide/amazon-workspaces-osx-client.html"
    regex(/>\s*v?(\d+(?:\.\d+)+)\s*</i)
  end

  depends_on macos: ">= :catalina"

  pkg "WorkSpaces.pkg"

  uninstall pkgutil: "com.amazon.workspaces"

  zap trash: [
    "~/Library/Application Support/Amazon Web Services/Amazon WorkSpaces",
    "~/Library/Caches/com.amazon.workspaces",
    "~/Library/Preferences/com.amazon.workspaces.plist",
    "~/Library/Saved Application State/com.amazon.workspaces.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
