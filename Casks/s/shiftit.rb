cask "shiftit" do
  version "1.6.6"
  sha256 "858045662074579856a521dcf967ddfc818f68583ddc96fe73612d82e071bd00"

  url "https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip"
  name "ShiftIt"
  desc "Tool to manage the size and position of windows"
  homepage "https://github.com/fikovnik/ShiftIt/"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true

  app "ShiftIt.app"

  zap trash: [
    "~/Library/Application Support/ShiftIt",
    "~/Library/Caches/org.shiftitapp.ShiftIt",
    "~/Library/Preferences/org.shiftitapp.ShiftIt.plist",
  ]

  caveats do
    requires_rosetta
  end
end
