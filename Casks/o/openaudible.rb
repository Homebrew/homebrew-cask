cask "openaudible" do
  version "4.8.8"
  sha256 "a9197f15293e9fac29a4ace0412423d24ff63ad411a54ef7da3d901f83990acc"

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
