cask "1password@nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://c.1password.com/dist/1P/mac8/1Password-latest.NIGHTLY-#{arch}.zip"
  name "1Password Nightly"
  desc "Password manager"
  homepage "https://1password.com/"

  conflicts_with cask: [
    "1password",
    "1password@beta",
  ]
  depends_on macos: ">= :monterey"

  app "1Password.app"

  zap trash: [
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password",
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Application Scripts/com.1password.1password-launcher",
    "~/Library/Application Scripts/com.1password.browser-support",
    "~/Library/Application Support/1Password",
    "~/Library/Application Support/CrashReporter/1Password*.plist",
    "~/Library/Containers/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Containers/com.1password.1password-launcher",
    "~/Library/Containers/com.1password.browser-support",
    "~/Library/Group Containers/*.com.1password",
    "~/Library/Group Containers/*.com.agilebits",
    "~/Library/Logs/DiagnosticReports/1Password*",
    "~/Library/Preferences/*1password.plist",
    "~/Library/Saved Application State/com.1password.1password.savedState",
  ]
end
