# typed: strict
# frozen_string_literal: true

cask "castsound" do
  version "0.1.0"
  sha256 "4b52bd3edb34679359989a552f40bac52c73844d6e7607e30c50081026aa5e18"

  url "https://github.com/CastSound/CastSound-Desktop/releases/download/v#{version}/CastSound-#{version}-macos-universal.dmg"
  name "CastSound"
  desc "Stream audio between computer and phone"
  homepage "https://castsound.app/"

  livecheck do
    url :url
    strategy :github_latest
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
