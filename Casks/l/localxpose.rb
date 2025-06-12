cask "localxpose" do
  arch arm: "arm64", intel: "amd64"

  version "24.9.2"
  sha256 :no_check

  url "https://api.localxpose.io/api/v2/downloads/loclx-darwin-#{arch}.zip"
  name "LocalXpose"
  desc "Reverse proxy that enables you to expose your localhost to the internet"
  homepage "https://localxpose.io/"

  livecheck do
    url "https://api.localxpose.io/api/v2/downloads/darwin-#{arch}.json"
    strategy :json do |json|
      json["Version"]
    end
  end

  no_autobump! because: :requires_manual_review

  auto_updates true

  binary "loclx"

  zap trash: "~/.localxpose"
end
