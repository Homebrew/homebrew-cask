cask "roslynpad" do
  arch arm: "arm64", intel: "x64"

  version "22.1"
  sha256 arm:   "b8bfb0f5ab2874bfe7aa369d8f0eeb388545a24cca7a1afb37df66fd9063f2a0",
         intel: "268280175cd2f325cdb9d43f2166d12a1f103976b244041bcc30aaed386f90f7"

  url "https://github.com/roslynpad/roslynpad/releases/download/#{version}/RoslynPad-macos-#{arch}.dmg"
  name "RoslynPad"
  desc "C# editor and runner based on Roslyn"
  homepage "https://roslynpad.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  depends_on macos: :sequoia

  app "RoslynPad.app"

  zap trash: "~/Library/Preferences/net.roslynpad.plist"
end
