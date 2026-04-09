cask "mockphine" do
  arch arm: "", intel: "-intel"

  version "0.6.1"
  sha256 :no_check

  url "https://downloads.mockphine.com/latest/mockphine#{arch}.dmg"
  name "Mockphine"
  desc "Local mock API server with passthrough fallback"
  homepage "https://mockphine.com/"

  livecheck do
    url "https://github.com/MockphineApp/Mockphine/releases/latest"
    strategy :github_latest
  end

  auto_updates true

  app "Mockphine.app"
end
