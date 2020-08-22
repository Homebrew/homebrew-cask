cask "paperspace" do
  version "9.4.0.1243"
  sha256 "96eeaacd383285240092fee90c756e677d0f423e8fa917fba5b858abd0c687a5"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.paperspace.com/download&user_agent=Mozilla/5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_14_5)"
  name "Paperspace"
  homepage "https://www.paperspace.com/"

  app "Paperspace.app"
end
