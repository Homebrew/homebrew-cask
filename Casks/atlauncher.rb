cask "atlauncher" do
  version "3.4.10.15"
  sha256 "5702aa8891f57f45baa5e441bcc5102e5df5162518732a9d983e900696de8458"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
