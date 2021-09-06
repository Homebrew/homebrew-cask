cask "prezi-next" do
  version "1.52.0,27050"
  sha256 "07e7c3fea8ba11593a427b139919133c34d9c00ed7da8df9d44373b2f4a22b39"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version.before_comma}.dmg"
  name "Prezi Next"
  desc "Presentation software"
  homepage "https://prezi.com/"

  livecheck do
    url "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Prezi Next.app"
end
