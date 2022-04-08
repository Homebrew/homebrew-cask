cask "n8n" do
  version "1.3.0"
  sha256 :no_check

  url "https://downloads.n8n.io/file/n8n-downloads/n8n-mac.zip"
  name "n8n"
  desc "Workflow automation platform"
  homepage "https://n8n.io/"

  app "n8n.app"
end
