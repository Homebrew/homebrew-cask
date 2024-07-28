cask "panda" do
  version "1.4.2"
  sha256 "551a2f4c2195dd1c00e7dfe83836a86485212ebeb6b008f130cecb83e002e3b8"

  url "https://github.com/pablosproject/Panda-Mac-app/releases/download/#{version}/Panda.zip"
  name "Panda"
  desc "Utility to switch from light to dark mode"
  homepage "https://github.com/pablosproject/Panda-Mac-app"

  deprecate! date: "2024-07-28", because: :unmaintained

  auto_updates true

  app "Panda.app"

  zap trash: [
    "~/Library/Caches/com.pablosproject.Panda",
    "~/Library/Preferences/com.pablosproject.Panda.plist",
  ]

  caveats do
    requires_rosetta
  end
end
