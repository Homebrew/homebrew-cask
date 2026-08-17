cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.10"
  sha256 arm:   "a5132d4012189772419e19cae0cd7bea4ef0f015b35d048073c2d8b23a4d9736",
         intel: "eaf1093f6066b237d5d6071c75a6e2cf679f697274c276d5080729b958303f52"

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
