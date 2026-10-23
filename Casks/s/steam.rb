cask "steam" do
  version "6.1,1791918634,984652b88a9737e3f4e77c656d9ffa67d5042c2c"
  sha256 "8bf4ce8b4bcbc50f642988c955559f605e7a877372116e7a2b3fd1355004bedb"

  url "https://client-update.steamstatic.com/appdmg_osx.zip.#{version.csv.third}"
  name "Steam"
  desc "Video game digital distribution service"
  homepage "https://store.steampowered.com/about/"

  # The file name is a hash, so the manifest version is used to order updates.
  # The app version is only available from the archive, so it's only checked
  # when the hash changes.
  livecheck do
    url "https://client-update.steamstatic.com/steam_client_osx"
    regex(/["']file["']\s+["']appdmg[._-]osx\.zip\.(\h+)["']/i)
    strategy :page_match do |page, regex|
      hash = page[regex, 1]
      next if hash.blank?
      next version if hash == version.csv.third

      manifest_version = page[/^\s*"version"\s+"(\d+)"/i, 1]
      next if manifest_version.blank?

      cask = CaskLoader.load(__FILE__)
      app_version = Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(
        cask:,
        url:  "https://client-update.steamstatic.com/appdmg_osx.zip.#{hash}",
      )[:matches].values.max
      next if app_version.blank?

      "#{app_version},#{manifest_version},#{hash}"
    end
  end

  auto_updates true
  depends_on :macos
  container type: :zip, nested: "SteamMacBootstrapper.tar.gz"

  app "Steam.app"

  uninstall launchctl: [
              "com.valvesoftware.steam.ipctool",
              "com.valvesoftware.steamclean",
            ],
            quit:      [
              "com.valvesoftware.steam",
              "com.valvesoftware.steam.helper",
              "com.valvesoftware.steam.helper.EH",
            ],
            delete:    "~/Library/Application Support/Steam/Steam.AppBundle"

  zap trash: [
    "~/Library/Application Support/Steam",
    "~/Library/LaunchAgents/com.valvesoftware.steamclean.plist",
    "~/Library/Preferences/com.valvesoftware.steam.helper.plist",
    "~/Library/Saved Application State/com.valvesoftware.steam.savedState",
  ]
end
