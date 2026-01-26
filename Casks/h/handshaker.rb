cask "handshaker" do
  version "2.5.6"
  sha256 "1ac126457138456d37175643595c9d29100643c3c810e20992418247f57ba82d"

  url "https://dl2.smartisan.com/app/HandShaker.v#{version}.zip"
  name "HandShaker"
  desc "App for managing Android devices"
  homepage "https://www.smartisan.com/apps/"

  deprecate! date: "2025-03-01", because: :unmaintained

  app "HandShaker.app"

  caveats do
    requires_rosetta
  end
end
