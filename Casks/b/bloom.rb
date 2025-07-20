cask "bloom" do
  version "1.3.1"
  sha256 "50a6f99880fa995393d0b50f178bce0c4e63348181eb690020cf1198bb6fd44f"

  url "https://bloomapp.club/downloads/bloom/Bloom%20-%20v#{version}.zip"
  name "Bloom"
  desc "File manager"
  homepage "https://bloomapp.club/"

  depends_on macos: ">= :sonoma"

  livecheck do
    url "https://bloomapp.club/downloads/bloom/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Bloom.app"
end
