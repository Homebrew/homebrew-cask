cask "ghostty" do
  version "1.0.0"
  sha256 "091f7a2b3f4160a16d7d52b2822124bb9d5714993815f62a7d70027984372652"

  url "https://release.files.ghostty.org/#{version}/Ghostty.dmg"
  name "Ghostty"
  desc "Terminal emulator with platform-native UI and GPU acceleration"
  homepage "https://ghostty.org/"

  livecheck do
    url "https://ghostty.org/download"
    regex(%r{https://release\.files\.ghostty\.org/(\d+\.\d+\.\d+)/Ghostty\.dmg}i)
  end

  depends_on macos: ">= :ventura"

  app "Ghostty.app"

  zap trash: [
    "./.cache/ghostty",
    "Library/HTTPStorages/com.mitchellh.ghostty/",
    "Library/Preferences/com.mitchellh.ghostty.plist",
  ]
end
