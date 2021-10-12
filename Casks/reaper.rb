cask "reaper" do
  version "6.37"

  if MacOS.version <= :mojave
    sha256 "b9b91996deab442ab6e124ea284673326a5b407bd74925ba28724763a3ab7c87"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"
  elsif Hardware::CPU.intel?
    sha256 "915f441675726211e056253c7536d7ffc06bf4eed92549f6a130f8b653cb233e"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64_catalina.dmg"
  else
    sha256 "9b65217fdbfeb992c2bc8c16020bf1f5f4a96d4bf7b9893a2a2e43e86f52a9dd"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}-beta_arm64.dmg"
  end

  name "REAPER"
  desc "Digital audio production application"
  homepage "https://www.reaper.fm/"

  livecheck do
    url "https://www.cockos.com/reaper/latestversion/?p=osx_64"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  if Hardware::CPU.intel?
    app "REAPER.app"
    app "ReaMote.app"
  else
    app "REAPER-ARM.app"
    app "ReaMote-ARM.app"
  end

  zap trash: [
    "~/Library/Application Support/REAPER",
    "~/Library/Saved Application State/com.cockos.reaper.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhosti386.savedState",
    "~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState",
    "~/Library/Saved Application State/com.cockos.ReaMote.savedState",
  ]
end
