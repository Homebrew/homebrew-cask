cask "keybase" do
  arch arm: "arm64-"

  on_arm do
    version "6.2.8,20240305171439,e38523abbe"
    sha256 "3d8eecd3e309ba64a1e056483a6980c6b144d46977d3439f374f938c415617c7"
  end
  on_intel do
    version "6.2.8,20240305162546,e38523abbe"
    sha256 "30134851788b1646cd86a4a0df5b6808ed78a041c7c2d2caead00461c32e4e53"
  end

  url "https://prerelease.keybase.io/darwin-#{arch}updates/Keybase-#{version.csv.first}-#{version.csv.second}%2B#{version.csv.third}.zip"
  name "Keybase"
  desc "End-to-end encryption software"
  homepage "https://keybase.io/"

  livecheck do
    url "https://prerelease.keybase.io/update-darwin-#{arch}prod-v2.json"
    strategy :page_match do |page|
      match = page.match(/Keybase[._-]v?(\d+(?:\.\d+)+)[._-](\d+)%2B([0-9a-f]+)\.zip/i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true

  app "Keybase.app"

  postflight do
    system_command "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
                   args: ["install-auto"]
  end

  uninstall launchctl: "keybase.Helper",
            signal:    [
              ["TERM", "keybase.Electron"],
              ["TERM", "keybase.ElectronHelper"],
              ["KILL", "keybase.Electron"],
              ["KILL", "keybase.ElectronHelper"],
            ],
            script:    {
              executable: "#{appdir}/Keybase.app/Contents/SharedSupport/bin/keybase",
              args:       ["uninstall"],
            },
            delete:    [
              "/Library/Logs/keybase*",
              "/Library/PrivilegedHelperTools/keybase.Helper",
            ]

  zap trash: [
        "~/Library/Application Support/Keybase",
        "~/Library/Caches/Keybase",
        "~/Library/Group Containers/keybase",
        "~/Library/Logs/Keybase*",
        "~/Library/Preferences/keybase*",
      ],
      rmdir: "/keybase"
end
