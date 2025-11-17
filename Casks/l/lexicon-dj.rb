cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.9.7"
  sha256 arm:   "572c0303ee5449a3592bcc7b95b348dfd12ecb443c3ba1508bb8e46230724f90",
         intel: "d3fa349b13417cd89890b221f0e6a8930657f0ca10d75fe393da44b9468c165f"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://update.rekord.cloud/releases/lexicon/latest/lexicon-#{version}-mac-#{arch}.zip",
      verified: "update.rekord.cloud/releases/lexicon/latest/"
  name "Lexicon"
  desc "Library management for professional DJs"
  homepage "https://www.lexicondj.com/"

  livecheck do
    url "https://update.rekord.cloud/releases/lexicon/latest/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Lexicon.app"

  zap trash: "~/Library/Application Support/Lexicon"
end
