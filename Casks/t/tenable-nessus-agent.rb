cask "tenable-nessus-agent" do
  version "11.0.1,26418"
  sha256 "6b16d55aa188c1fcabcd6aff145935663ec3a89bbd8e6caf6530c93ab9022551"

  url "https://www.tenable.com/downloads/api/v1/public/pages/nessus-agents/downloads/#{version.csv.second}/download?i_agree_to_tenable_license_agreement=true"
  name "Tenable Nessus Agent"
  desc "Agent for Nessus vulnerability scanner"
  homepage "https://www.tenable.com/"

  livecheck do
    url "https://www.tenable.com/downloads/nessus-agents?loginAttempted=true"
    regex(/"id"\s*:\s*(\d+)\s*,\s*"file"\s*:\s*"NessusAgent[._-]v?(\d+(?:\.\d+)+)\.dmg"/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "Install Nessus Agent.pkg"

  uninstall launchctl: "com.tenablesecurity.nessusagent",
            pkgutil:   "com.tenablesecurity.NessusAgent.Preferences",
            delete:    [
              "/Library/LaunchDaemons/com.tenablesecurity.nessusagent.plist",
              "/Library/NessusAgent",
              "/Library/PreferencePanes/Nessus Agent Preferences.prefPane",
              "/private/etc/tenable_tag",
            ]

  # No zap stanza required

  caveats do
    license "https://static.tenable.com/prod_docs/tenable_slas.html"
  end
end
