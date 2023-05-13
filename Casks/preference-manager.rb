cask "preference-manager" do
  version "4.5.4.0"
  sha256 "dcaa511f529cf5e659e86f0e6ae49f4bbcd63669a4e66ebf6ccfee4a9a9b7295"

  url "https://www.digitalrebellion.com/download/prefman?version=#{version.no_dots}"
  name "Preference Manager"
  desc "Trash, backup, lock and restore video editor preferences"
  homepage "https://www.digitalrebellion.com/prefman/"

  livecheck do
    url "https://www.digitalrebellion.com/prefman/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/prefman\?version=(\d+(?:\.\d+)*)"}i)
      next if match.blank?

      match[1].gsub(/./, '\0.').chop.to_s
    end
  end

  app "Preference Manager.app"

  zap trash: [
    "~/Library/Caches/com.digitalrebellion.SoftwareUpdate",
    "~/Library/HTTPStorages/com.digitalrebellion.SoftwareUpdate",
    "~/Library/LaunchAgents/com.digitalrebellion.PreferenceManagerAutoSave.plist",
    "~/Library/Logs/Digital Rebellion",
    "~/Library/Preferences/com.digitalrebellion*",
    "~/Library/Saved Application State/com.digitalrebellion.PreferenceManager.savedState",
  ]
end
