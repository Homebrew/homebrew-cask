cask "deepnest" do
  version "1.0.5"
  sha256 "602c97f2becfddd808bfea8cab1cd7c20503494fa17df2ee55b3cec65a45c7eb"

  url "https://deepnest.io/Deepnest-#{version}-mac.zip"
  name "Deepnest"
  desc "Nesting application for CNC machines"
  homepage "https://deepnest.io/"

  deprecate! date: "2024-07-09", because: :unmaintained

  app "Deepnest-#{version}-mac/Deepnest-mac-#{version}.app", target: "Deepnest.app"

  zap trash: [
    "~/Library/Application Support/Deepnest.io",
    "~/Library/Caches/com.deepnest.io",
    "~/Library/Preferences/com.deepnest.io.helper.plist",
    "~/Library/Preferences/com.deepnest.io.plist",
    "~/Library/Saved Application State/com.deepnest.io.savedState",
    "~/Library/WebKit/com.deepnest.io",
  ]

  caveats do
    requires_rosetta
  end
end
