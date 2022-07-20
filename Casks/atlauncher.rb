cask "atlauncher" do
  version "3.4.19.1"
  sha256 "8e70e2068268cea45614897bf7fe8c9b5839a1b65438af02ad398c04c3a49758"

  url "https://github.com/ATLauncher/ATLauncher/releases/download/v#{version}/ATLauncher-#{version}.zip",
      verified: "github.com/ATLauncher/ATLauncher/"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://atlauncher.com/"

  app "ATLauncher.app"
end
