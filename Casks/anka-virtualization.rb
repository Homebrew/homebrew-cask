cask "anka-virtualization" do
  arch arm: "-arm", intel: ""
  livecheck_folder = on_arch_conditional arm: "arm", intel: "intel"

  on_intel do
    version "2.5.7.148"
    sha256 "e600e8144f5ca5134aa94785bc9bbc567193b1065944573df9cc9daf7d8f796e"
    depends_on macos: ">= :big_sur"
  end
  on_arm do
    version "3.1.1.152"
    sha256 "a1fd1558fc7ba5f9b3c9eb3636e33b1b5c99be79dd6521a491e14b101810e004"
    depends_on macos: ">= :monterey"
  end

  url "https://downloads.veertu.com/anka/Anka-#{version}#{arch}.pkg"
  name "Anka Virtualization"
  desc "CLI tool for managing and creating virtual machines"
  homepage "https://veertu.com/"

  livecheck do
    url "https://veertu.com/downloads/anka-virtualization-#{livecheck_folder}"
    strategy :header_match
    regex(/Anka[._-]?v?(\d+(?:\.\d+)+)\.pkg/i)
  end

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
