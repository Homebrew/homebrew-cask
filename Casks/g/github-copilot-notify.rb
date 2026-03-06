cask "github-copilot-notify" do
  version "0.4.8"
  sha256 "bd4e31d0431b4dc2ce0518d57b9a997586ff89ebe2eb928146fa40106d213d56"

  url "https://github.com/unicornops/github-copilot-notify/releases/download/v#{version}/GithubCopilotNotify-#{version}.dmg"
  name "GitHub Copilot Notify"
  desc "Menu bar app showing GitHub Copilot premium request usage"
  homepage "https://github.com/unicornops/github-copilot-notify"

  depends_on macos: :ventura

  app "GithubCopilotNotify.app"
end
