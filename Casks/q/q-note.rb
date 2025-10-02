cask "q-note" do
  version "1.0.0"

  on_arm do
    sha256 :no_check

    url "https://api.q-note.app/v1/attachments/13/download"
  end
  on_intel do
    sha256 :no_check

    url "https://api.q-note.app/v1/attachments/14/download"
  end

  name "QNote"
  desc "Secure Note-Taking App"
  homepage "https://www.q-note.app/en"

  app "QNote.app"
end
