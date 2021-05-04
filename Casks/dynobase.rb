cask "dynobase" do
  version "1.4.0"

  if Hardware::CPU.intel?
    sha256 "9954440dc838fc4459e72ed5d607c3e2c9f388dba07ca9c94b8cad115fb7abfd"

    url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg",
        verified: "github.com/Dynobase/dynobase/"
  else
    sha256 "7cb4e2831d1581ca7ee4227c4fb594bfa32a268f51aa38261b83ed018b396f4a"

    url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}-arm64.dmg",
        verified: "github.com/Dynobase/dynobase/"
  end

  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
