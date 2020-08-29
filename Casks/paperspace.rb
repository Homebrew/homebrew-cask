cask "paperspace" do
  version "9.4.0.1243"
  sha256 "96eeaacd383285240092fee90c756e677d0f423e8fa917fba5b858abd0c687a5"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/send_post_request_data.cgi?url=https://api.paperspace.io/receivers/latestVersion&data={%22component%22:%22paperspaceInstaller%22,%22os%22:%22mac%22}&headers={%22user-agent%22:%22Mozilla%22,%22content-type%22:%22application/json%22}"
  name "Paperspace"
  homepage "https://www.paperspace.com/"

  app "Paperspace.app"
end
