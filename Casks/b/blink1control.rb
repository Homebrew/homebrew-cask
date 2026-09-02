cask "blink1control" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "mac-#{arch}.dmg", linux: "linux-x86_64.AppImage"

  version "2.3.0"

  on_macos do
    sha256 arm:   "4b05ba63024c00c1226acdd48337fc0258d6cfb045d6ae720e588e11da78d13c",
           intel: "778dad2b5914e6e2cb792260e24fed3a490a3d762c6693033fa89472720ce737"

    depends_on macos: :big_sur

    app "Blink1Control#{version.major}.app"

    zap trash: [
      "~/Library/Application Support/Blink1Control#{version.major}",
      "~/Library/Logs/Blink1Control#{version.major}",
      "~/Library/Preferences/com.thingm.blink1control#{version.major}.plist",
      "~/Library/Saved Application State/com.thingm.blink1control#{version.major}.savedState",
    ]
  end
  on_linux do
    sha256 "147c220e339140ad6c6c3cf426aba56ded7dd1347fc94a42f4e71493398cffa5"

    depends_on arch: :x86_64

    app_image "Blink1Control#{version.major}-#{version}-linux-x86_64.AppImage",
              target: "Blink1Control#{version.major}.AppImage"
  end

  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-#{url_end}"
  name "Blink1Control"
  desc "Utility to control blink(1) USB RGB LED devices"
  homepage "https://blink1.thingm.com/"
end
