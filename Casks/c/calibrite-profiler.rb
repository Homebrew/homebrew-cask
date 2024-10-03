cask "calibrite-profiler" do
  version "1.3.3"
  sha256 "beab575669a526520a20a64f47f510e01471d0631246cfea77ef727d91cea083"

  url "https://github.com/LUMESCA/calibrite-profiler-releases/releases/download/v#{version}/calibrite-PROFILER-#{version}.dmg",
      verified: "github.com/LUMESCA/calibrite-profiler-releases/"
  name "calibrite PROFILER"
  desc "Display calibration software for Calibrite, ColorChecker and X-Rite devices"
  homepage "https://calibrite.com/calibrite-profiler/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "calibrite PROFILER.app"

  zap trash: [
    "~/Library/Application Support/calibrite PROFILER",
    "~/Library/Application Support/calibrite-profiler",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.calibrite.profiler.sfl*",
    "~/Library/Caches/calibrite PROFILER",
    "~/Library/Logs/calibrite PROFILER",
    "~/Library/Logs/calibrite-profiler",
    "~/Library/Preferences/com.calibrite.profiler.plist",
    "~/Library/Saved Application State/com.calibrite.profiler.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
