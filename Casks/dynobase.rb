cask "dynobase" do
  version "1.4.2"

  if Hardware::CPU.intel?
    sha256 "df8cc4e530d181083f31214f31d789f8185954b668ceef86acb58b163b1c0625"

    url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg",
        verified: "github.com/Dynobase/dynobase/"
  else
    sha256 "e6555964c33184f8f265ba75c79d1cf826e638ce91d25bedddeefd5b79551a6b"

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
