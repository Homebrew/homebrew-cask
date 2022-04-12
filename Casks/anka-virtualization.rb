cask "anka-virtualization" do
  version "2.5.5.142"
  sha256 "655aae008a84fe265f85ef8527bb5f94cdf4275b5b13dff38358af632baa6a0b"

  url "https://downloads.veertu.com/anka/Anka-#{version}.pkg"
  name "Anka Virtualization"
  desc "CLI tool for managing and creating virtual machines"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-virtualization-latest"
    strategy :header_match
    regex(/Anka[._-]?v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :big_sur"

  pkg "Anka-#{version}.pkg"

  uninstall launchctl: [
    "com.veertu.anka.ankakbd",
    "com.veertu.anka.ankanetd",
    "com.veertu.anka.lupd",
    "com.veertu.nlimit",
    "com.veertu.vlaunch",
  ],
            pkgutil:   [
              "com.veertu.anka.guestaddons.pkg",
              "com.veertu.anka.agent.pkg",
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
