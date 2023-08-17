cask "tenable-nessus-agent" do
  version "10.4.2,20509"
  sha256 "deb5a33dc278d93717b6eff9c7b0e44809ad0d489430b66bd4a4e30d9453d98e"

  url "https://www.tenable.com/downloads/api/v1/public/pages/nessus-agents/downloads/#{version.csv.second}/download?i_agree_to_tenable_license_agreement=true"
  name "Tenable Nessus Agent"
  desc "Agent for Nessus vulnerability scanner"
  homepage "https://www.tenable.com/"

  livecheck do
    url "https://www.tenable.com/downloads/nessus-agents?loginAttempted=true"
    strategy :page_match do |page|
      match = page.match(/"id"\s*:\s*(\d+)\s*,\s*"file"\s*:\s*"NessusAgent[._-]v?(\d+(?:\.\d+)+)\.dmg"/)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "Install Nessus Agent.pkg"

  uninstall pkgutil:   "com.tenablesecurity.NessusAgent.Preferences",
            delete:    [
              "/Library/NessusAgent",
              "/Library/LaunchDaemons/com.tenablesecurity.nessusagent.plist",
              "/Library/PreferencePanes/Nessus Agent Preferences.prefPane",
              "/private/etc/tenable_tag",
            ],
            launchctl: "com.tenablesecurity.nessusagent"

  # No zap stanza required

  caveats do
    license "https://static.tenable.com/prod_docs/tenable_slas.html"
  end
end
