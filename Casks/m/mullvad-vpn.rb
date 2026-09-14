cask "mullvad-vpn" do
  version "2026.4"
  sha256 "b00522020be5d580d96e0cf506baf78269c1b699cb860860451ae86e9b26b60c"

  url "https://cdn.mullvad.net/app/desktop/releases/#{version}/MullvadVPN-#{version}.pkg"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  livecheck do
    url "https://api.mullvad.net/app/releases/macos.json"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json.dig("signed", "releases")&.filter_map do |release|
        release["version"] if release["version"]&.match(regex)
      end
    end
  end

  auto_updates true
  conflicts_with cask: "mullvad-vpn@beta"
  depends_on macos: :monterey

  pkg "MullvadVPN-#{version}.pkg"

  uninstall launchctl: "net.mullvad.daemon",
            quit:      "net.mullvad.vpn",
            pkgutil:   "net.mullvad.vpn",
            delete:    [
              "/Library/Caches/mullvad-vpn",
              "/opt/homebrew/share/fish/vendor_completions.d/mullvad.fish",
              "/opt/homebrew/share/zsh/site-functions/_mullvad",
              "/usr/local/bin/mullvad",
              "/usr/local/bin/mullvad-problem-report",
              "/usr/local/share/fish/vendor_completions.d/mullvad.fish",
              "/usr/local/share/zsh/site-functions/_mullvad",
              "/var/log/mullvad-vpn",
            ]

  zap script: {
        executable:   "/Applications/Mullvad VPN.app/Contents/Resources/mullvad-setup",
        args:         ["reset-firewall"],
        sudo:         true,
        must_succeed: false,
      },
      trash:  [
        "/etc/mullvad-vpn",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mullvad.vpn.sfl*",
        "~/Library/Application Support/Mullvad VPN",
        "~/Library/Logs/Mullvad VPN",
        "~/Library/Preferences/net.mullvad.vpn.helper.plist",
        "~/Library/Preferences/net.mullvad.vpn.plist",
      ]
end
