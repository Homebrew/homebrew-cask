cask "sip-app" do
  on_ventura :or_older do
    on_big_sur :or_older do
      version "2.8"
      sha256 "95e2bd14ce3de9743304efee4fb9964f00fc9505401f1e036de8175616ca58dd"
    end
    on_monterey do
      version "3.5.1"
      sha256 "8dd74db34c925c9712c5b383bae43dc9cb2339ed3af2ad0a8677e0a22815f35f"
    end
    on_ventura do
      version "3.6.2"
      sha256 "d8c43036940aefee8d9f632f2e5fd78939edebac0e658534729c226b7619af25"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "4.1.1"
    sha256 "92f9136ee4a8243ce6cded716114ddd1476a839e825d9bab13e974ccdea5ba00"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.sipapp.sip-paddle.sfl*",
    "~/Library/Application Support/CrashReporter/Sip_*.plist",
    "~/Library/Application Support/io.sipapp.Sip-paddle",
    "~/Library/Application Support/Sip",
    "~/Library/Caches/io.sipapp.Sip-paddle",
    "~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies",
    "~/Library/HTTPStorages/io.sipapp.Sip-paddle",
    "~/Library/Logs/DiagnosticReports/Sip-*.ips",
    "~/Library/Preferences/io.sipapp.Sip-paddle.plist",
    "~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState",
    "~/Library/WebKit/io.sipapp.Sip-paddle",
  ]
end
