cask "dropshelf" do
  version "1729"
  sha256 "452ed83a900eb989a0a5e114fa31bc0eee32da8b71b55eb6ba4ad420c72f6ca9"

  url "https://pilotmoon.com/downloads/beta/Dropshelf-build-#{version}.zip"
  name "Dropshelf"
  desc "Drag and drop helper app"
  homepage "https://pilotmoon.com/dropshelf/"

  livecheck do
    url :homepage
    regex(/href=.*?Dropshelf-build-(\d+)\.zip/i)
  end

  app "Dropshelf.app"

  zap trash: [
    "~/Library/Application Scripts/6W6K75YWQ9.com.pilotmoon.Dropshelf.group",
    "~/Library/Application Scripts/com.pilotmoon.Dropshelf",
    "~/Library/Application Scripts/com.pilotmoon.Dropshelf.launcher",
    "~/Library/Containers/com.pilotmoon.Dropshelf",
    "~/Library/Containers/com.pilotmoon.Dropshelf.launcher",
    "~/Library/Group Containers/6W6K75YWQ9.com.pilotmoon.Dropshelf.group",
  ]
end
