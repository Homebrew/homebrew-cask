cask "fl-studio" do
  version "24.1.2.4038"
  sha256 "01ac07fa739aef1fb14fc342a933987194a681a1bb6814d712a4337060b4adfb"

  url "https://install.image-line.com/flstudio/flstudio_mac_#{version}.dmg",
      referer:    "https://www.image-line.com/fl-studio-download/",
      user_agent: :browser
  name "FL Studio"
  desc "Digital audio production application"
  homepage "https://www.image-line.com/flstudio/"

  # The macOS link on the download page redirects to the latest dmg file but
  # livecheck is blocked by Cloudflare unless we use a `:browser` user agent
  # and set the download page as the referer. We can't set the referer in
  # livecheck yet, so this works around the issue by parsing the version from
  # the URL that the download page uses to fetch version information.
  livecheck do
    url "https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb"
    strategy :page_match do |page|
      # Extract the JSON text from the JavaScript
      match = page.match(/il_get_version_info_cb\("(.+?)"\);/i)
      next if match.blank?

      # Unescape the JSON text and parse it
      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1].gsub(/\\+"/, '"'))
      json["prod"]&.filter_map do |_id, prod|
        next unless (prod_mac = prod["mac"])
        next unless prod_mac["name"]&.include?("FL Studio")

        prod_mac["version"]
      end
    end
  end

  pkg "Install FL Studio.pkg"

  uninstall launchctl: "com.image-line.flc-install-helper-socket",
            pkgutil:   [
              "com.image-line.fl-cloud-plugins.app",
              "com.image-line.fl-cloud-plugins.launchDaemon",
              "com.Image-Line.pkg.#{version.major}ONLINE",
              "com.Image-Line.pkg.flcloud.plugins",
            ],
            delete:    "/Applications/FL Cloud Plugins.app"

  zap trash: [
    "~/Library/Caches/com.image-line.flstudio",
    "~/Library/HTTPStorages/com.image-line.flstudio",
    "~/Library/Preferences/com.image-line.flstudio.plist",
    "~/Library/Saved Application State/com.image-line.flstudio.savedState",
  ]
end
