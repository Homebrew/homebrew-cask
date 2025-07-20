cask "bloom" do
  version "1.3.1"
  sha256 "50a6f99880fa995393d0b50f178bce0c4e63348181eb690020cf1198bb6fd44f"

  url "https://github.com/INCHMAN1900/bloom-release/releases/download/v#{version}/Bloom-v#{version}.zip"
  name "Bloom"
  desc "Refined file manager"
  homepage "https://bloomapp.club/"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bloom.app"
end
