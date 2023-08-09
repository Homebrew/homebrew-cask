cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.4.2"
  sha256 arm:   "7db12734438cbf32701a374a6bd3106b798ceda509ec9da9279ea666b7a2005d",
         intel: "04e82b127658e776fe2349fab20609b413e9659133f364d81000d7c822f4842c"

  url "https://github.com/freedomofpress/dangerzone/releases/download/v#{version}/Dangerzone-#{version}-#{arch}.dmg",
      verified: "github.com/freedomofpress/dangerzone/"
  name "Dangerzone"
  desc "Convert potentially dangerous PDFs or Office documents into safe PDFs"
  homepage "https://dangerzone.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dangerzone.app"

  zap trash: [
    "~/Library/Application Support/dangerzone",
    "~/Library/Saved Application State/press.freedom.dangerzone.savedState",
  ]
end
