cask "reaper" do
  version "6.31"

  if MacOS.version <= :mojave
    sha256 "9cafc2dcda0ea11daea92f6558aea6eb3aa58917b91a50e81e2a623e3fda0f5f"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64.dmg"
  elsif Hardware::CPU.intel?
    sha256 "33b68d500c370dd3736842a0c5e1279e054a50621c88f51cc8f3b5595903f42e"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}_x86_64_catalina.dmg"
  else
    sha256 "42b68fc08dc0058ba78172879b675a331e1f7e3cb787d51b9bcbd9bb8e34cbfa"

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.major_minor.no_dots}-beta_arm64.dmg"
  end

  name "REAPER"
  desc "Digital audio production application"
  homepage "https://www.reaper.fm/"

  livecheck do
    url "https://www.cockos.com/reaper/latestversion/?p=osx_64"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
