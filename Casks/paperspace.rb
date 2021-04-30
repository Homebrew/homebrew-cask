cask "paperspace" do
  version "10.1.0.1685"
  sha256 "6d7bef9f569a3c8a99b716068cc3ff6d8d5e603536eab593a4359b8866d0dfaa"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/send_post_request_data.cgi?url=https://api.paperspace.io/receivers/latestVersion&data={%22component%22:%22paperspaceInstaller%22,%22os%22:%22mac%22}&headers={%22user-agent%22:%22Mozilla%22,%22content-type%22:%22application/json%22}"
  name "Paperspace"
  homepage "https://www.paperspace.com/"

  app "Paperspace.app"
end
