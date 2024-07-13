cask "handshaker" do
  version "2.5.6"
  sha256 "1ac126457138456d37175643595c9d29100643c3c810e20992418247f57ba82d"

  url "http://dl2.smartisan.cn/app/HandShaker.v#{version}.zip",
      verified: "dl2.smartisan.cn/app/"
  name "HandShaker"
  desc "App for managing Android devices"
  homepage "https://www.smartisan.com/apps/"

  livecheck do
    url "https://sf.smartisan.com/update.plist"
    strategy :sparkle, &:short_version
  end

  app "HandShaker.app"

  caveats do
    requires_rosetta
  end
end
