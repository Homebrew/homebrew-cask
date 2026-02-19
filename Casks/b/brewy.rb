cask "brewy" do
  version "0.3.0"
  sha256 "7d70620f887b2b7e083a0376174d60f98872dcaf2d1df96d6ae71156cc549a4d"

  url "https://github.com/p-linnane/Brewy/releases/download/#{version}/Brewy-#{version}.zip"
  name "Brewy"
  desc "Simple Homebrew GUI"
  homepage "https://github.com/p-linnane/Brewy"

  no_autobump! because: :bumped_by_upstream

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
