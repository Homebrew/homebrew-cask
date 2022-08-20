cask "localxpose" do
  arch arm: "arm64", intel: "amd64"

  version "22.8.9"
  sha256 :no_check

  url "https://api.localxpose.io/api/v2/downloads/loclx-darwin-#{arch}.zip"
  name "LocalXpose"
  desc "Reverse proxy that enables you to expose your localhost to the internet"
  homepage "https://localxpose.io/"

  livecheck do
    url "https://api.localxpose.io/api/v2/downloads/darwin-#{arch}.json"
    strategy :page_match do |page|
      JSON.parse(page)["Version"]
    end
  end

  auto_updates true

  binary "loclx-darwin-#{arch}", target: "loclx"

  zap trash: "~/.localxpose"
end
