cask "knuff" do
  version "1.3"
  sha256 "06c6bb6d2254211f4369a9903aefb61eb894c706b08635091f457d1730b79c69"

  url "https://github.com/KnuffApp/Knuff/releases/download/v#{version}/Knuff.app.zip"
  name "Knuff"
  desc "Debug application for Apple Push Notification Service (APNs)"
  homepage "https://github.com/KnuffApp/Knuff"

  depends_on macos: ">= :sierra"

  app "Knuff.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.madebybowtie.knuff-osx.sfl*",
    "~/Library/Application Support/com.makebybowtie.Knuff-OSX",
    "~/Library/Caches/com.crashlytics.data/com.madebybowtie.Knuff-OSX",
    "~/Library/HTTPStorages/com.madebybowtie.Knuff-OSX",
    "~/Library/Preferences/com.madebybowtie.Knuff-OSX.plist",
  ]

  caveats do
    requires_rosetta
  end
end
