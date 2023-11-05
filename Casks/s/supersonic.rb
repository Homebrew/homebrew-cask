cask "supersonic" do
  arch intel: "x64"

  version "0.6.0"
  sha256 intel: "49a63286b6eee27f996b0edfce0a780aef1803c1a539b70507a3eccb2bfc423e"

  url "https://github.com/dweymouth/supersonic/releases/download/v#{version}/Supersonic-#{version}-mac-#{arch}.zip"
  name "Supersonic"
  desc "Lightweight desktop client for Subsonic music servers"
  homepage "https://github.com/dweymouth/supersonic"

  app "Supersonic.app"

  zap trash: [
    "~/Library/Application Support/supersonic",
    "~/Library/Caches/supersonic",
  ]
end
