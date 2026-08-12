cask "brave-browser" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "stable-arm64", intel: "stable"

  version "1.93.136.0"
  sha256 arm:   "32f2c434b77d2a3ab297d1d1b0e3f49a21a8b076cb2003c0d285b1df254dd98e",
         intel: "11d8e3d08ee1d837f7d7972d7005096f23feadc178651f5f9128ced07a384808"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brave Browser.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Browser",
        "~/Library/Caches/BraveSoftware/Brave-Browser",
        "~/Library/Caches/com.brave.Browser",
        "~/Library/HTTPStorages/com.brave.Browser",
        "~/Library/Preferences/com.brave.Browser.plist",
        "~/Library/Saved Application State/com.brave.Browser.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
