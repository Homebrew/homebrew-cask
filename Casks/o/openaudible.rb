cask "openaudible" do
  version "5.1.1"
  sha256 "dedd583ffcbbae8b6f2ad66be1cad28f675302b740ca81f049baee109c8ea367"

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
