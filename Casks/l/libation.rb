cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.7"
  sha256 arm:   "765cbcd30151c42baa31a9f7dff337ac2f250e32504756c700a685327015e0de",
         intel: "d39a120e5d6bc3192c23adf4bbce2ee1a36ddcc193d322f2142105b31301f923"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg",
      verified: "github.com/rmcrackan/Libation/"
  name "Libation"
  desc "Audible audiobook manager and liberator"
  homepage "https://getlibation.com/"

  depends_on macos: :ventura

  app "Libation.app"
  binary "#{appdir}/Libation.app/Contents/MacOS/LibationCli", target: "libationcli"

  zap trash: [
    "~/Library/Application Support/Libation",
    "~/Library/Preferences/org.libation.macos.plist",
  ]
end
