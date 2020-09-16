cask "aquamacs" do
  version "3.5"
  sha256 "c27165c0b42b93ef3c9e5dfd0dd53527b10c683aae35fceedd4fecc52332c2ba"

  # github.com/davidswelt/aquamacs-emacs/ was verified as official when first introduced to the cask
  url "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-#{version}/Aquamacs-Emacs-#{version}.dmg"
  appcast "https://github.com/davidswelt/aquamacs-emacs/releases.atom"
  name "Aquamacs"
  desc "Text editor based on GNU Emacs"
  homepage "https://aquamacs.org/"

  app "Aquamacs.app"

  zap trash: "~/Library/Caches/Aquamacs Emacs"
end
