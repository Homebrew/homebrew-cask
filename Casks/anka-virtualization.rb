cask "anka-virtualization" do
  arch arm: "-arm", intel: "-intel"
  livecheck_folder = on_arch_conditional arm: "arm", intel: "intel"

  on_arm do
    version "3.2.2.158"
    sha256 "19edf4e1802ef9925d6f4df5335f9963b911a8b1c99b1f387255062b3f21f292"
  end
  on_intel do
    version "3.2.1.155"
    sha256 "5d78b31d318238d5289a887922ebdb65bdda20ea25fcb2dfab82a24cce4aabc6"
  end

  url "https://downloads.veertu.com/anka/Anka-#{version}#{arch}.pkg"
  name "Anka Virtualization"
  desc "CLI tool for managing and creating virtual machines"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-virtualization-#{livecheck_folder}"
    regex(/Anka[._-]?v?(\d+(?:\.\d+)+)#{arch}\.pkg/i)
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  pkg "Anka-#{version}#{arch}.pkg"

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
