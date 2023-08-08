cask "sip" do
  on_sierra :or_older do
    version "1.2"
    sha256 "eb4507ce67c6d19c4e649d3e033542265be8d2aaccabc7f8ee00080842a886c0"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "2.4.1"
    sha256 "9e8e69b8874891fab4fcc44edfb9b6ff2e510a1f41c87e9faea6060fc3f33073"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "2.8"
    sha256 "95e2bd14ce3de9743304efee4fb9964f00fc9505401f1e036de8175616ca58dd"

    livecheck do
      url "https://sipapp.io/updates/"
      regex(%r{href=.*?/sip[._-]v?(\d+(?:\.\d+)*)\.dmg}i)
    end
  end

  url "https://sipapp.fra1.digitaloceanspaces.com/updates/v#{version.major}/sip-#{version}.dmg",
      verified: "sipapp.fra1.digitaloceanspaces.com/updates/"
  name "Sip"
  desc "Collect, organize & share colors"
  homepage "https://sipapp.io/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Sip.app"

  uninstall quit: "io.sipapp.Sip-paddle"

  zap trash: [
    "~/.sip_v*",
    "~/Library/Application Support/Sip",
    "~/Library/Application Support/io.sipapp.Sip-paddle",
    "~/Library/Application Support/CrashReporter/Sip_*.plist",
    "~/Library/Caches/io.sipapp.Sip-paddle",
    "~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies",
    "~/Library/Preferences/io.sipapp.Sip-paddle.plist",
    "~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState",
  ]
end
