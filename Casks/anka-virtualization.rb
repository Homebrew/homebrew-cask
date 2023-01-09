cask "anka-virtualization" do
  arch arm: "-arm", intel: "-intel"
  livecheck_folder = on_arch_conditional arm: "arm", intel: "intel"

  on_intel do
    version "3.2.0.154"
    sha256 "40697e490de1450beba828a8015e339a91de3899729385c1116e5d898984aaf3"
  end
  on_arm do
    version "3.2.0.153"
    sha256 "83d881b76136b64064fa6201906c75404e4df618360ca08b9765e39b890bf388"
  end

  url "https://downloads.veertu.com/anka/Anka-#{version}#{arch}.pkg"
  name "Anka Virtualization"
  desc "CLI tool for managing and creating virtual machines"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-virtualization-#{livecheck_folder}"
    strategy :header_match
    regex(/Anka[._-]?v?(\d+(?:\.\d+)+)#{arch}\.pkg/i)
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
