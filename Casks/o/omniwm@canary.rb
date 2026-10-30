cask "omniwm@canary" do
  version "20261030-0415-41001556816-1"
  sha256 "ecedcfff7100cffe1c9363120d4bb7d5920dab6a5d25195a290dd5210692a514"

  url "https://github.com/OmniNull/OmniWM/releases/download/canary-#{version}/OmniWM-canary-canary-#{version}.zip"
  name "OmniWM Canary"
  desc "Tiling window manager"
  homepage "https://omniwm.app/"

  livecheck do
    url :url
    regex(/^canary[._-](\d+(?:[._-]\d+)+)$/i)
  end

  conflicts_with cask: "omniwm"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "OmniWM.app"
  binary "#{appdir}/OmniWM.app/Contents/MacOS/omniwmctl"
  generate_completions_from_executable "#{appdir}/OmniWM.app/Contents/MacOS/omniwmctl", "completion"

  uninstall quit: "com.barut.OmniWM"

  zap trash: [
    "~/.config/omniwm",
    "~/.local/state/omniwm",
    "~/Library/Application Support/com.barut.OmniWM",
    "~/Library/Caches/com.barut.OmniWM",
    "~/Library/HTTPStorages/com.barut.OmniWM",
    "~/Library/Preferences/com.barut.OmniWM.plist",
  ]
end
