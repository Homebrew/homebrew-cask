# typed: strict
# frozen_string_literal: true

cask "castsound" do
  version "0.1.0"
  sha256 "92f52812939fe83732f9e5013040ed2a9987a04716643ab8985d849fe6d09a2c"

  url "https://github.com/CastSound/CastSound-Desktop/releases/download/v#{version}/CastSound-#{version}-macos-universal.dmg"
  name "CastSound"
  desc "Stream audio between computer and phone"
  homepage "https://castsound.app/"

  livecheck do
    url :url
    regex(/CastSound[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]universal\.dmg/i)
  end

  auto_updates true

  app "CastSound.app"

  postflight do
    system_command "/bin/mkdir",
                   args:         ["-p", "#{Dir.home}/Library/Application Support/com.devculi.castsound"],
                   must_succeed: false
    File.write("#{Dir.home}/Library/Application Support/com.devculi.castsound/.managed_by_homebrew", "")
  end

  uninstall script: {
    executable: "#{appdir}/CastSound.app/Contents/MacOS/castsound-uninstall",
    args:       ["-y"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Support/com.devculi.castsound",
    "~/Library/Caches/com.devculi.castsound",
    "~/Library/Preferences/com.devculi.castsound.plist",
  ]
end
