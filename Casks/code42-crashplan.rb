cask "code42-crashplan" do
  version "8.2.1,1525200006821:77"
  sha256 "89af29fd387aef977ca1da175105d0861c2a39742dc87dd648ea330548570ae4"

  url "https://download.code42.com/installs/client-package-repository/#{version.before_comma}/#{version.after_colon}/install/Code42_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}_Mac.dmg",
      verified: "download.code42.com/"
  name "Code42 CrashPlan"
  desc "Endpoint backup and recovery"
  homepage "https://www.crashplan.com/"

  livecheck do
    url "https://support.code42.com/Administrator/6/Planning_and_installing/Code42_server_and_app_downloads"
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/(\d+)/install/Code42[._-]\1[._-](\d+)[._-]\2[._-]Mac\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[2]}:#{match[1]}" }
    end
  end

  auto_updates true

  pkg "Install Code42.pkg"

  uninstall launchctl: "com.backup42.desktop",
            pkgutil:   "com.code42.app.pkg",
            script:    {
              executable: "Uninstall.app/Contents/Resources/uninstall.sh",
              sudo:       true,
            }
end
