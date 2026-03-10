cask "peel" do
  version "1.0.0"
  sha256 "611a8218f4ca92fab0301e43f796956ce2d6c6dba4358906a25584dd8f1f4e00"

  url "https://storage.douglaslassance.me/peel/peel-#{version}.dmg"
  name "Peel"
  desc "Browse different"
  homepage "https://peel.douglaslassance.me/"

  livecheck do
    url "https://storage.douglaslassance.me/peel/peel.json"
    strategy :json do |json|
      json["latest"]
    end
  end

  depends_on macos: ">= :ventura"

  app "Peel.app"

  zap trash: [
    "~/Library/Application Scripts/me.douglaslassance.peel",
    "~/Library/Containers/me.douglaslassance.peel",
  ]
end
