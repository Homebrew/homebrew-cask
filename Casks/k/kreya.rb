cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 :no_check

  url "https://stable-downloads.kreya.app/Kreya-osx-#{arch}.zip"
  name "Kreya"
  desc "GUI Client for interacting with gRPC services"
  homepage "https://kreya.app/"

  livecheck do
    url "https://kreya.app/docs/release-notes/"
    regex(/(\d+(?:\.\d+)+)\s\(\d{4}-\d{2}-\d{2}\)/i)
  end

  app "Kreya.app"

  zap trash: "~/Library/Caches/app.kreya"
end
