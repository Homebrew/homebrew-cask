cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "14.2.2"
  sha256 arm:   "477945c4d4145689d45d769086fc1a77230eae45e3ad2ed5aebf323c5be1057e",
         intel: "b93764e93de4bbf686feb55f3c5ee9b3eb2e27c22f610db9d4ef64c495dd2ca5"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg"
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
