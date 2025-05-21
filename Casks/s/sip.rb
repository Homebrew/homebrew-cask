cask "sip" do
  on_monterey :or_older do
    on_sierra :or_older do
      version "1.2"
      sha256 "eb4507ce67c6d19c4e649d3e033542265be8d2aaccabc7f8ee00080842a886c0"
    end
    on_high_sierra do
      version "2.4.1"
      sha256 "9e8e69b8874891fab4fcc44edfb9b6ff2e510a1f41c87e9faea6060fc3f33073"
    end
    on_mojave do
      version "2.5.5"
      sha256 "a67550abe2f43981b7b41827ee9ccc0f826383cc1d146e748bde399f3c352d62"
    end
    on_catalina do
      version "2.8"
      sha256 "95e2bd14ce3de9743304efee4fb9964f00fc9505401f1e036de8175616ca58dd"
    end
    on_big_sur do
      version "2.8"
      sha256 "95e2bd14ce3de9743304efee4fb9964f00fc9505401f1e036de8175616ca58dd"
    end
    on_monterey do
      version "3.5.1"
      sha256 "8dd74db34c925c9712c5b383bae43dc9cb2339ed3af2ad0a8677e0a22815f35f"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "3.6.2"
    sha256 "d8c43036940aefee8d9f632f2e5fd78939edebac0e658534729c226b7619af25"

    # Some older items in the Sparkle feed have a more recent pubDate, so it's necessary to
    # work with all of the items in the feed (not just the newest one).
    livecheck do
      url "https://sipapp.fra1.digitaloceanspaces.com/updates/v#{version.major}/sip.xml"
      strategy :sparkle do |items|
        items.map(&:short_version)
      end
    end
  end

  url "https://sipapp.fra1.digitaloceanspaces.com/updates/v#{version.major}/sip-#{version}.dmg",
      verified: "sipapp.fra1.digitaloceanspaces.com/updates/"
  name "Sip"
  desc "Collect, organise & share colours"
  homepage "https://sipapp.io/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Sip.app"

  uninstall quit: "io.sipapp.Sip-paddle"

  zap trash: [
    "~/.sip_v*",
    "~/Library/Application Support/CrashReporter/Sip_*.plist",
    "~/Library/Application Support/io.sipapp.Sip-paddle",
    "~/Library/Application Support/Sip",
    "~/Library/Caches/io.sipapp.Sip-paddle",
    "~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies",
    "~/Library/Preferences/io.sipapp.Sip-paddle.plist",
    "~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState",
  ]
end
