cask "roslynpad" do
  arch arm: "arm64", intel: "x64"

  version "22"
  sha256 arm:   "009899acb3697a6739e7bef69e4efada66b2be1118ddced5e114c91e3e14d20d",
         intel: "4005d9d8309def06c6a4a4cff1e3816469c516d32a521abb871b3c45da99cdc3"

  url "https://github.com/roslynpad/roslynpad/releases/download/#{version}/RoslynPad-macos-#{arch}.dmg",
      verified: "github.com/roslynpad/roslynpad/"
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
