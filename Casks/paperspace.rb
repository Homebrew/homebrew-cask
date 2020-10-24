cask "paperspace" do
  version "10.0.0.1561"
  sha256 "e5a4a921223d98a6b8a698299ec1646a4a79e01fec83427fd395ab9e89bca7ff"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/send_post_request_data.cgi?url=https://api.paperspace.io/receivers/latestVersion&data={%22component%22:%22paperspaceInstaller%22,%22os%22:%22mac%22}&headers={%22user-agent%22:%22Mozilla%22,%22content-type%22:%22application/json%22}"
  name "Paperspace"
  homepage "https://www.paperspace.com/"

  app "Paperspace.app"
end
