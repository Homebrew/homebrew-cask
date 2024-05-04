cask "sync" do
  version "2.2.36"
  sha256 "394642c32c9788967da57eab64bcdd1ff66c699bc64d5b0e08e19c951fc33cf7"

  url "https://www.sync.com/download/apple/Sync-#{version}.dmg"
  name "Sync"
  desc "Store, share and access files from anywhere"
  homepage "https://www.sync.com/"

  livecheck do
    url "https://www.sync.com/install/"
    regex(/href=.*?Sync[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Sync.app"

  zap trash: [
        "~/Library/Application Scripts/com.sync.desktop",
        "~/Library/Application Scripts/com.sync.desktop.findersync",
        "~/Library/Group Containers/com.sync.desktop",
        "~/Library/Preferences/com.sync.desktop.plist",
      ],
      rmdir: "~/Sync"
end
