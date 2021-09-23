cask "dropbox-capture" do
  version :latest
  sha256 :no_check

  url "https://clientupdates.dropboxstatic.com/dbx-releng/dropbox_capture/mac/Dropbox_Capture.dmg",
      verified: "https://clientupdates.dropboxstatic.com/"
  name "Dropbox Capture"
  desc "Share your work and ideas with video messages and screenshots"
  homepage "https://dropbox.com/capture/"

  app "Dropbox Capture.app"
end
