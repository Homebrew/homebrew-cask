cask "atlauncher" do
  version "3.4.13.7"
  sha256 "13bcc1dd180ab274f8ac234a57d65bbe3580f272b97f94366569ac8223a2dfd4"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
