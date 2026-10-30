cask "airi" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "249d5e0ef836dd73ee78758dd837b87461e07fd44d1014d3bb482e091d78f4e1",
         intel: "f0da5724867cf5d6b5077d482e66223db7dac5a77468f437a6d8f95c199eb4d7"

  url "https://github.com/moeru-ai/airi/releases/download/v#{version}/AIRI-#{version}-darwin-#{arch}.dmg"
  name "AIRI"
  desc "AI companion and VTuber application"
  homepage "https://airi.moeru.ai/"

  # The latest release on GitHub may not always be a stable version, so we check
  # the upstream download page until unstable versions are consistently marked
  # as pre-release on GitHub.
  livecheck do
    url "https://airi.moeru.ai/docs/en/docs/overview/versions"
    regex(%r{/releases/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end

  depends_on macos: :monterey

  app "airi.app"

  uninstall quit: "ai.moeru.airi"

  zap trash: [
    "~/Library/Application Support/ai.moeru.airi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.moeru.airi.sfl*",
    "~/Library/Preferences/ai.moeru.airi.plist",
  ]
end
