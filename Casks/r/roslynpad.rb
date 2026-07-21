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
    # Releases are tagged without trailing zero components ("22", "21.1"),
    # which the default strategy regex rejects.
    regex(/^v?(\d+(?:\.\d+)*)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: :sequoia

  app "RoslynPad.app"

  # ~/RoslynPad holds the user's own documents, so it is deliberately not zapped.
  zap trash: "~/Library/Preferences/net.roslynpad.plist"

  caveats <<~EOS
    RoslynPad needs a supported .NET SDK to compile and run programs:
      brew install --cask dotnet-sdk
  EOS
end
