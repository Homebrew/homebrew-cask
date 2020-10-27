cask "paperspace" do
  version "10.1.0.1622"
  sha256 "498a8c9575a0ce1eb20ee7b0599a9bd12266901d6e7c7983f5ace7f264d06d01"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/send_post_request_data.cgi?url=https://api.paperspace.io/receivers/latestVersion&data={%22component%22:%22paperspaceInstaller%22,%22os%22:%22mac%22}&headers={%22user-agent%22:%22Mozilla%22,%22content-type%22:%22application/json%22}"
  name "Paperspace"
  homepage "https://www.paperspace.com/"

  app "Paperspace.app"
end
