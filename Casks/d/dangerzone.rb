cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.11.1"
  sha256 arm:   "21159870dfb3b84558a74fcf1f3b28964495b641617eb2a598582f63f8f8f0d4",
         intel: "d20c462a092398f14284d62803169c04bb626304f91623341ff39a782eab35e1"

  url "https://github.com/freedomofpress/dangerzone/releases/download/v#{version}/Dangerzone-#{version}-#{arch}.dmg"
  name "Dangerzone"
  desc "Convert potentially dangerous PDFs or Office documents into safe PDFs"
  homepage "https://dangerzone.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Dangerzone.app"

  zap trash: [
    "~/Library/Application Support/dangerzone",
    "~/Library/Caches/dangerzone",
    "~/Library/Saved Application State/press.freedom.dangerzone.savedState",
  ]
end
