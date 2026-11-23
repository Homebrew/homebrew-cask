cask "openaudible" do
  version "5.3"
  sha256 "4d0e9950c59982c14e97009c585780c3629e4e5909f234970674fbbdf4d1295e"

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
