cask "seaglass" do
  version "0.0.525-f5a1376"
  sha256 "ff96050e21abef5e11bba60a3c6e6a98a303239a0c36637c8ceb8fa539c7f93a"

  # github.com/neilalexander/seaglass/ was verified as official when first introduced to the cask
  url "https://github.com/neilalexander/seaglass/releases/download/#{version}/Seaglass-#{version}.zip"
  appcast "https://github.com/neilalexander/seaglass/releases.atom"
  name "Seaglass"
  homepage "https://neilalexander.eu/seaglass/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Seaglass.app"
end
