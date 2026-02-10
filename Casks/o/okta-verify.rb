cask "okta-verify" do
  version "9.56.1,5921-166eb79"
  sha256 "2c835bad7d62b2f039127c706244b4b624c5c762dc33747bc75ee7b1f11c7647"

  url "https://okta.okta.com/artifacts/OKTA_VERIFY_MACOS/#{version.csv.first}/OktaVerify-#{version.csv.first}-#{version.csv.second}.pkg"
  name "Okta Verify"
  desc "Identity verification provider"
  homepage "https://help.okta.com/eu/en-us/content/topics/end-user/ov-overview-macos.htm"

  livecheck do
    url "https://okta.okta.com/api/v1/artifacts/OKTA_VERIFY_MACOS/latest?releasesChannel=GA"
    regex(/OktaVerify[._-]v?(\d+(?:\.\d+)+)(?:[._-](.+))?\.pkg/i)
    strategy :json do |json, regex|
      json["files"]&.filter_map do |file|
        match = file["href"]&.match(regex)
        next unless match

        match[2] ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  depends_on macos: ">= :sonoma"

  pkg "OktaVerify-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall launchctl: [
              "com.okta.authentication.service",
              "com.okta.autoupdate.daemon",
              "com.okta.deviceaccess.servicedaemon",
            ],
            pkgutil:   "com.okta.mobile",
            delete:    [
              "/Applications/Okta Verify.app",
              "/Library/Application Support/com.okta.deviceaccess.servicedaemon",
              "/Library/LaunchDaemons/com.okta.authentication.service.plist",
              "/Library/LaunchDaemons/com.okta.autoupdate.daemon.plist",
              "/Library/LaunchDaemons/com.okta.deviceaccess.servicedaemon.plist",
              "/Library/Security/SecurityAgentPlugins/OktaDAAuthPlugin.bundle",
              "/usr/local/bin/AutoUpdateDaemon",
              "/usr/local/bin/OktaDAServiceDaemon",
            ]

  zap trash: [
    "~/Library/Containers/com.okta.mobile",
    "~/Library/Preferences/B7F62B65BN.group.okta.verify.shared.plist",
    "~/Library/Preferences/com.okta.mobile.plist",
    "~/Library/Preferences/group.com.okta.mobile.firebase.plist",
  ]
end
