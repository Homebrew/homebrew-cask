cask "sip-app" do
  on_monterey :or_older do
    on_catalina :or_older do
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
    version "4.0.3"
    sha256 "e4ab62cdfc19611aa341afe6e31f873fd63d572b44592ec58b44e3946cab50b4"

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
