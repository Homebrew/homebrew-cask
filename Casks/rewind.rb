cask "rewind" do
  version :latest
  sha256 :no_check

  url "https://download.rewind.ai/Rewind.pkg"
  name "Rewind"
  desc "Record and search your screen and audio"
  homepage "https://www.rewind.ai/"

  depends_on arch:  :arm64,
             macos: ">= :monterey"

  pkg "Rewind.pkg"

  postflight do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "${app_dir}"` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    retries ||= 3
    ohai "The Rewind package postinstall script launches the Rewind app" unless retries < 3
    ohai "Attempting to close Rewind.app to avoid unwanted user intervention" unless retries < 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/Rewind.app"]

  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close Rewind.app"
  end

  uninstall pkgutil:    "com.memoryvault.MemoryVault",
            quit:       "com.memoryvault.MemoryVault",
            launchctl:  "com.rewind.Rewind",
            delete:     "/Applications/Rewind.app",
            login_item: "Rewind"

  zap trash: [
    "~/Documents/rewind_logs_*.zip",
    "~/Library/Application Support/com.memoryvault.MemoryVault",
    "~/Library/Caches/com.memoryvault.MemoryVault",
    "~/Library/HTTPStorages/com.memoryvault.MemoryVault",
    "~/Library/LaunchAgents/com.rewind.Rewind.plist",
    "~/Library/Logs/DiagnosticReports/Rewind_*.diag",
    "~/Library/Logs/Rewind",
    "~/Library/Preferences/com.memoryvault.MemoryVault.plist",
    "~/Library/WebKit/com.memoryvault.MemoryVault",
  ]
end
