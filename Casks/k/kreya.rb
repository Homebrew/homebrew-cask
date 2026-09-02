cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.21.0"
  sha256 arm:   "1787baafc8cdc8f70df10fdf92dff9b145b25690b9376c05f8def1d9d4e7bbf6",
         intel: "145051eecc67e65daa248ed1e1e7fb14a7085b37340c4863c0daa9905041df92"

  url "https://stable-downloads.kreya.app/#{version}/Kreya-osx-#{arch}.zip"
  name "Kreya"
  desc "GUI Client for interacting with gRPC, REST and WebSocket services"
  homepage "https://kreya.app/"

  livecheck do
    url "https://kreya.app/docs/release-notes/"
    regex(/(\d+(?:\.\d+)+)\s\(\d{4}-\d{2}-\d{2}\)/i)
  end

  depends_on macos: :ventura

  app "Kreya.app"

  zap trash: "~/Library/Caches/app.kreya"
end
