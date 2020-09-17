cask "paperspace" do
  version "9.4.1.1292"
  sha256 "a77a32d7c5dcee2aae4575ceb645b23709213d8dc3a71e2990733dfb8106bc16"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/send_post_request_data.cgi?url=https://api.paperspace.io/receivers/latestVersion&data={%22component%22:%22paperspaceInstaller%22,%22os%22:%22mac%22}&headers={%22user-agent%22:%22Mozilla%22,%22content-type%22:%22application/json%22}"
  name "Paperspace"
  homepage "https://www.paperspace.com/"

  app "Paperspace.app"
end
