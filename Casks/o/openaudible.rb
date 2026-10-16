cask "openaudible" do
  version "5.0.2"
  sha256 "059f928f68e052e2b8b102a2bb19cf68b17c5056823ca248c3b6d323bb312812"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}.dmg"
  name "OpenAudible"
  desc "Audiobook manager for Audible users"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
