cask "anka-virtualization" do
  version "3.3.2.166"
  sha256 "2e5d4f8864d37053aa24216a04cf044b2c78f9bc8aad7730699435c7af5ddcba"

  url "https://downloads.veertu.com/anka/Anka-#{version}.pkg"
  name "Anka Virtualization"
  desc "CLI tool for managing and creating virtual machines"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-virtualization-latest"
    regex(/Anka[._-]?v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  pkg "Anka-#{version}.pkg"

  uninstall launchctl: [
              "com.veertu.anka.ankakbd",
              "com.veertu.anka.ankanetd",
              "com.veertu.anka.lupd",
              "com.veertu.nlimit",
              "com.veertu.vlaunch",
            ],
            script:    {
              executable: "/Library/Application Support/Veertu/Anka/tools/uninstall.sh",
              args:       ["-f"],
              sudo:       true,
            }

  zap trash: [
        "/Library/Application Support/Veertu/Anka",
        "~/.anka",
        "~/Library/Application Support/CrashReporter/ankahv_*.plist",
        "~/Library/Application Support/Veertu/Anka",
        "~/Library/Logs/Anka",
        "~/Library/Preferences/com.veertu.ankaview.plist",
      ],
      rmdir: [
        "/Library/Application Support/Veertu",
        "~/Library/Application Support/Veertu",
      ]

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
