cask "aquamacs" do
  version "3.5"
  sha256 "c27165c0b42b93ef3c9e5dfd0dd53527b10c683aae35fceedd4fecc52332c2ba"

  url "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-#{version}/Aquamacs-Emacs-#{version}.dmg",
      verified: "github.com/davidswelt/aquamacs-emacs/"
  name "Aquamacs"
  desc "Text editor based on GNU Emacs"
  homepage "https://aquamacs.org/"

  livecheck do
    url :url
    strategy :git
    regex(/^Aquamacs-(\d+(?:\.\d+)*)$/i)
  end

  app "Aquamacs.app"

  zap trash: "~/Library/Caches/Aquamacs Emacs"
end
