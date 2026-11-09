cask "openaudible" do
  version "5.2"
  sha256 "56b8323b60a8f1c3a665a3a2be87dabf91dcfda66d42de1229d58a07e2ad25de"

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

  zap trash: "~/Library/Preferences/org.openaudible.openaudible.plist",
      rmdir: "~/Library/OpenAudible"
end
