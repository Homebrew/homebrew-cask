cask "aquamacs" do
  version "3.6"
  sha256 "463ff60fffdd4e3c5d234b4aee3eaa1c91c286806cc32179f90ed2c2a52328d0"

  url "https://github.com/aquamacs-emacs/aquamacs-emacs/releases/download/aquamacs-#{version}/Aquamacs-#{version}.dmg",
      verified: "github.com/aquamacs-emacs/aquamacs-emacs/"
  name "Aquamacs"
  desc "Text editor based on GNU Emacs"
  homepage "https://aquamacs.org/"

  livecheck do
    url :url
    regex(/^Aquamacs[._-](\d+(?:\.\d+)+)$/i)
  end

  app "Aquamacs.app"

  zap trash: "~/Library/Caches/Aquamacs Emacs"
end
