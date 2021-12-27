cask "anka-virtualization" do
  version "2.5.4.138"
  sha256 "08b3c5f3f6e0e83162d568596b95847d1e5b89e28051d3d5776a0d109b9064a9"

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
