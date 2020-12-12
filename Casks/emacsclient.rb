cask "emacsclient" do
  version :latest
  sha256 :no_check

  url "https://github.com/sprig/org-capture-extension/raw/master/EmacsClient.app.zip"
  name "emacsclient"
  desc "Chrome/Firefox extension that facilitates org-capture in emacs"
  homepage "https://github.com/sprig/org-capture-extension"

  app "EmacsClient.app"
end
