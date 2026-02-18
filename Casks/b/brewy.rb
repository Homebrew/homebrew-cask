cask "brewy" do
  version "0.1.0"
  sha256 "1889c4812a3000b6013724bcd25ce44080166a2d5b1c46acec3aab916eb73e6e"

  url "https://github.com/p-linnane/Brewy/releases/download/#{version}/Brewy-#{version}.zip"
  name "Brewy"
  desc "Native app for managing Homebrew packages"
  homepage "https://github.com/p-linnane/Brewy"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Brewy.app"

  zap trash: [
    "~/Library/Application Scripts/com.linnane.Brewy",
    "~/Library/Application Support/Brewy",
    "~/Library/Containers/com.linnane.Brewy",
    "~/Library/Preferences/Brewy.plist",
    "~/Library/Preferences/io.linnane.Brewy.plist",
  ]
end
