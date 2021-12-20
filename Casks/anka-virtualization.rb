cask "anka-virtualization" do
  version "2.5.4.137"
  sha256 "ae639ab12ecab9101f4eadbbb46bac91037235f74cbcda19a6ac592956eb799f"

  url "https://downloads.veertu.com/anka/Anka-#{version}.pkg"
  name "Anka Virtualization"
  desc "CLI tool for managing and creating virtual machines"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-virtualization-latest"
    strategy :header_match
    regex(/Anka[._-]?v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :yosemite"

  pkg "Anka-#{version}.pkg"

  uninstall launchctl: [
    "com.veertu.nlimit",
    "com.veertu.vlaunch",
    "com.veertu.anka.lupd",
    "com.veertu.anka.ankakbd",
    "com.veertu.anka.ankanetd",
  ],
            script:    {
              executable: "/Library/Application Support/Veertu/Anka/tools/uninstall.sh",
              args:       ["-f"],
              sudo:       true,
            }

  zap trash: [
    "~/.anka",
    "~/Library/Application Support/Veertu/Anka",
    "~/Library/Application Support/CrashReporter/ankahv_*.plist",
    "~/Library/Logs/Anka",
    "~/Library/Preferences/com.veertu.ankaview.plist",
    "/Library/Application Support/Veertu/Anka",
  ],
      rmdir: [
        "~/Library/Application Support/Veertu",
        "/Library/Application Support/Veertu",
      ]

  caveats do
    license "https://veertu.com/terms-and-conditions/"
  end
end
