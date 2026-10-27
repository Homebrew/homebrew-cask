cask "openaudible" do
  version "5.1"
  sha256 "8de9e149a78d3f0a5253c54c274fb627ab90835c4c142256169ddca719fd3f5c"

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
