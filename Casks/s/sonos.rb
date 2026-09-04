cask "sonos" do
  version "90.0-79210,HBVQeC4A1l"
  sha256 "f088496273b6c524f3a59ec02453bad39236e5b0b5793068e1ef547f1f255272"

  url "https://update-software.sonos.com/software/#{version.csv.second}/Sonos_#{version.csv.first}.dmg"
  name "Sonos S2"
  desc "Control your Sonos system"
  homepage "https://www.sonos.com/", browsed: "2026-09-04"

  # Sonos blocks systematic/automated requests to this redirect (Akamai bot
  # protection returns a 403), so this is unreachable in the autobump and CI
  # environments. A contributor needs to bump this manually for now.
  livecheck do
    url "https://www.sonos.com/redir/controller_software_mac2",
        user_agent: :curl
    regex(%r{software/(\w+)/Sonos[._-]v?(\d+(?:[.-]\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      headers["location"]&.scan(regex)&.map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  no_autobump! because: "Sonos blocks systematic/automated requests to the version-check redirect"

  auto_updates true
  depends_on :macos

  app "Sonos.app"

  uninstall quit: "com.sonos.macController2"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Sonos_*.plist",
    "~/Library/Application Support/SonosV2",
    "~/Library/Caches/com.sonos.macController2",
    "~/Library/HTTPStorages/com.sonos.macController2",
    "~/Library/Logs/Sonos*",
    "~/Library/Preferences/com.sonos.macController2.plist",
  ]
end
