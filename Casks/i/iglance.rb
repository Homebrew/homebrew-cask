cask "iglance" do
  version "2.1.0"
  sha256 "3cc56893ae4d05b0931122028f5787448e5c0ffca5be3939c200c385188163b7"

  url "https://github.com/iglance/iglance/releases/download/v#{version}/iGlance_v#{version}.zip"
  name "iGlance"
  desc "System monitor for the status bar"
  homepage "https://github.com/iglance/iGlance"

  deprecate! date: "2024-07-17", because: :unmaintained

  auto_updates true
  depends_on macos: ">= :sierra"

  app "iGlance.app"

  zap trash: [
    "~/Library/Caches/io.github.iglance.iGlance",
    "~/Library/Preferences/io.github.iglance.iGlance.plist",
  ]

  caveats do
    requires_rosetta
  end
end
